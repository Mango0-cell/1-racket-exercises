
(require 2htdp/universe)
(require 2htdp/image)

;; CONFIGURACIÓN
(define tamano-bloque 40)
(define filas 7)
(define columnas 16)
(define bmp (bitmap "Captura de pantalla 2025-05-15 133553.bmp"))

;; LABERINTO: 1 = pared, 0 = camino
(define laberinto
  '((1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
    (1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1)
    (1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1)
    (1 0 0 1 0 0 0 0 1 0 0 0 0 1 0 1)
    (1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1)
    (1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 1)
    (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)))

;; DIBUJO DE BLOQUES
(define (cuadro color)
  (rectangle tamano-bloque tamano-bloque "solid" color))

(define (dibujar-laberinto)
  (apply above
         (map (lambda (fila)
                (apply beside
                       (map (lambda (celda)
                              (if (= celda 1)
                                  (cuadro "black")
                                  (cuadro "white")))
                            fila)))
              laberinto)))

;; POSICIÓN INICIAL
(define inicio (list 1 1))

;; ¿Es pared?
(define (es-pared? x y)
  (or (< x 0)
      (< y 0)
      (>= x columnas)
      (>= y filas)
      (= (list-ref (list-ref laberinto y) x) 1)))

;; Movimiento
(define (mover key pos)
  (define dxdy
    (cond [(key=? key "up")    (list 0 -1)]
          [(key=? key "down")  (list 0 1)]
          [(key=? key "left")  (list -1 0)]
          [(key=? key "right") (list 1 0)]
          [else                (list 0 0)]))
  (define new-x (+ (first pos) (first dxdy)))
  (define new-y (+ (second pos) (second dxdy)))
  (if (es-pared? new-x new-y)
      'colision
      (list new-x new-y)))

;; Dibujar mundo con jugador
(define (dibujar-mundo pos)
  (place-image (cuadro "blue")
               (+ (* (first pos) tamano-bloque) (/ tamano-bloque 2))
               (+ (* (second pos) tamano-bloque) (/ tamano-bloque 2))
               (dibujar-laberinto)))

;; Función de tecla
(define (manejar-tecla estado tecla)
  (cond
    [(list? estado)
     (define nuevo (mover tecla estado))
     (if (equal? nuevo 'colision)
         'colision
         nuevo)]
    [else estado]))

;; Función de dibujo
(define (dibujar estado)
  (cond
    ((equal? estado 'colision) bmp)
    [(list? estado) (dibujar-mundo estado)]
    [else (dibujar-mundo inicio)]))


(define (actualizar estado)
  (if (equal? estado 'colision)
      (begin
        (sleep 1)
      inicio)
      estado))

;; INICIAR JUEGO sin tick-rate
(big-bang inicio
  [to-draw dibujar]
  [on-key manejar-tecla]
  [on-tick actualizar])
