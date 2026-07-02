(require (lib "graphics.ss" "graphics"))
(open-graphics)

(define ancho 800)
(define alto 600)
(define lado 50)
(define radio 30)

(define v (open-viewport "Esquiva las pelotas" ancho alto))

;; Dibuja el "carro" como un rectángulo con ruedas
(define (dibujar-carro x y)
  (begin
    ;; Cuerpo del carro
    ((draw-solid-rectangle v) (make-posn x y) lado lado "blue")
    ; Ruedas
    ((draw-solid-ellipse v) (make-posn (+ x 5) (+ y 40)) 10 10 "black")
    ((draw-solid-ellipse v) (make-posn (+ x 35) (+ y 40)) 10 10 "black")))

;; Borra el "carro" con fondo blanco
(define (borrar-carro x y)
  ((draw-solid-rectangle v) (make-posn x y) lado lado "white"))

(define (dibujar-pelota x y color)
  ((draw-solid-ellipse v) (make-posn x y) radio radio color))

(define (dibujar-pelotas pelotas color)
  (if (null?  pelotas)
      '()
      (begin
        (dibujar-pelota (car (car pelotas)) (cadr (car pelotas)) color)
        (dibujar-pelotas (cdr pelotas) color))))

(define (colision? cx cy px py)
  (and (<= px (+ cx lado))
       (>= (+ px radio) cx)
       (<= py (+ cy lado))
       (>= (+ py radio) cy)))

(define (colisiona-con-alguna? cx cy pelotas)
  (cond [(null? pelotas) #f]
        [(colision? cx cy (car (car pelotas)) (cadr (car pelotas))) #t]
        [else (colisiona-con-alguna? cx cy (cdr pelotas))]))

(define (random-pelotas n)
  (if (= n 0)
      '()
      (cons
       (list (+ 100 (random (- ancho 50))) (+ 100 (random (- alto 150))))
       (random-pelotas (- n 1)))))

(define (mostrar-texto texto)
  ((draw-string v) (make-posn 300 280) texto "black"))

(define (esperar-segundo)
  (sleep 1))

;; Dibuja la zona de llegada en verde
(define (dibujar-llegada)
  (begin
    ((draw-solid-rectangle v) (make-posn (- ancho 50) (- alto 50)) 50 50 "green")
    ((draw-string v) (make-posn (- ancho 50) (- alto 25)) "META" "red")))

;; --------- Juego Principal ---------

(define (jugar intento)
  (clear-viewport v)
  (define pelotas (random-pelotas 5))
  (dibujar-pelotas pelotas "white")
  (dibujar-llegada)
  (define (loop x y)
    (dibujar-carro x y)
    (if (colisiona-con-alguna? x y pelotas)
        (begin
          (borrar-carro x y)
          (dibujar-pelotas pelotas "red")
          (esperar-segundo)
          (if (>= intento 3)
              (begin
                (clear-viewport v)
                (mostrar-texto "PERDEDOR")
                (esperar-segundo)
                (close-viewport v))
              (jugar (+ intento 1))))
        (if (and (>= x (- ancho 100)) (<= x ancho)
                 (>= y (- alto 50)) (<= y alto))
            (begin
              (borrar-carro x y)
              (dibujar-pelotas pelotas "red")
              (dibujar-carro (- ancho 50) (- alto 50))
              (mostrar-texto "¡Llegada!")
              (sleep 3)
              (close-viewport v))
            (let ((key (key-value (get-key-press v))))
              (borrar-carro x y)
              (cond [(equal? key 'up)    (loop x (max 0 (- y 10)))]
                    [(equal? key 'down)  (loop x (min (- alto lado) (+ y 10)))]
                    [(equal? key 'left)  (loop (max 0 (- x 10)) y)]
                    [(equal? key 'right) (loop (min (- ancho lado) (+ x 10)) y)]
                    [else (loop x y)])))))
  
  (loop 0 0))

(jugar 0)
