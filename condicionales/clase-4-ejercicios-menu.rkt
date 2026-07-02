(define(PROBLEMA1)
  (define (valor-c camisas)
  (* 20000 camisas))

(define (valor-p pantalones)
  (* 30000 pantalones))

(define (compra camisas pantalones)
  (+ (valor-c camisas) (valor-p pantalones)))

(define (descuento total)
  (cond
    ((< total 70000) total)
    ((and (> total 70000) (<= total 150000)) (* total 0.94))
    ((> total 150000) (* total 0.88))
    (else "Error")))

(define (solo-descuento total)
  (cond
    ((< total 70000) 0)
    ((and (> total 70000) (<= total 150000)) (* total 0.06))
    ((> total 150000) (* total 0.12))
    (else "Error")))

(define (iva total-descuento)
  (* total-descuento 0.16))

(define (valor-a-pagar total-descuento)
  (+ total-descuento (iva total-descuento)))

(define (datos)
  (display "Ingrese la cantidad de camisas: ")
  (define camisas (read))
  (display "Ingrese la cantidad de pantalones: ")
  (define pantalones (read))
  (define total (compra camisas pantalones))
  (define total-descuento (descuento total))
  (define total-iva (iva total-descuento))
  (define total-pagar (valor-a-pagar total-descuento))
  (display "\nFACTURA: ")
  (display "\nUnidades de camisas: ") (display camisas)
  (display "\nUnidades de pantalones: ") (display pantalones)
  (display "\nValor bruto de camisas: ") (display (valor-c camisas))
  (display "\nValor bruto de pantalones: ") (display (valor-p pantalones))
  (display "\nValor bruto de la compra total: ") (display total)
  (display "\nEl valor del descuento es: ") (display (solo-descuento total))
  (display "\nEl valor neto de la compra es: ") (display total-descuento)
  (display "\nEl valor del monto del IVA es: ") (display total-iva)
  (display "\nEl valor a pagar es: ") (display total-pagar)
  )

(datos)
  )
;2
(define(PROBLEMA2)
(define (area)
  (display "introduzca el largo del rectángulo : ")
  (define largo (read))
  (display "introduzca el ancho del rectángulo : ")
  (define ancho (read))
  (define metros (* largo ancho))
  metros)  

(define (descuento metros precio)
  (cond
    ((> metros 1000)
     (* metros precio 0.75))  
    ((and(> metros 500)(< metros 1000))
     (* metros precio 0.83))
    ((and(> metros 400)(< metros 500))
     (* metros precio 0.9))
    (* metros precio))
  )
(define (principal)
  (define metros (area)) 
  (display "introduzca el precio por metro cuadrado: ")
  (define precio (read))  
  (define total (descuento metros precio))  
  (display "El precio total es: ")
  (display total))
(principal)
  )
;3
(define(PROBLEMA3)
(define (descuento hora frutas-v pro-aseo carnes ro-cal licores)
  (cond
    ((and(>= hora 7.0) (< hora 8.30))
     (* frutas-v 0.9) (* pro-aseo 0.95)(* carnes 0.95)(* ro-cal 0.9)(* licores 0.92))
    ((and(>= hora 8.30)(<= hora 9.30))
     (* frutas-v 0.5)(* pro-aseo 0.2)(* carnes 0.2)(* ro-cal 0.8)(* licores 0.94))
    ((or(> hora 9.30)(< hora 7.0))
     frutas-v pro-aseo carnes ro-cal licores))
  )
(define (ahorro hora frutas-v pro-aseo carnes ro-cal licores)
  (cond
    ((and(>= hora 7.0) (< hora 8.30))
     (* frutas-v 0.1) (* pro-aseo 0.05)(* carnes 0.05)(* ro-cal 0.1)(* licores 0.08))
    ((and(>= hora 8.30)(<= hora 9.30))
     (* frutas-v 0.05)(* pro-aseo 0.02)(* carnes 0.02)(* ro-cal 0.08)(* licores 0.06))
    ((or(> hora 9.30)(< hora 7.0))
     " 0"))
  )
  (define (datos)
    (display "ingrese la hora separando los minutos y horas con un punto(.) ejemplo: (7.30)  ")
    (define hora(read))
    (define frutas-v 2000)
    (define pro-aseo 5000)
    (define carnes 3000)
    (define ro-cal 3000)
    (define licores 4000)
    (begin (display "el total a pagar es: ")(display (descuento hora frutas-v pro-aseo carnes ro-cal licores)))
    (begin (display "\nel ahorro total es de: ")(display (ahorro hora frutas-v pro-aseo carnes ro-cal licores)))
    )
  (datos)
  )
;4
(define(PROBLEMA4)
(define (menor n1 n2 n3 n4)
  (cond
    ((and (<= n1 n2) (<= n1 n3) (<= n1 n4)) n1)
    ((and (<= n2 n1) (<= n2 n3) (<= n2 n4)) n2)
    ((and (<= n3 n1) (<= n3 n2) (<= n3 n4)) n3)
    (else n4)))

(define (mayor n1 n2 n3 n4)
  (cond
    ((and (>= n1 n2) (>= n1 n3) (>= n1 n4)) n1)
    ((and (>= n2 n1) (>= n2 n3) (>= n2 n4)) n2)
    ((and (>= n3 n1) (>= n3 n2) (>= n3 n4)) n3)
    (else n4)))

(define (nota-final n1 n2 n3 n4)
  (define min (menor n1 n2 n3 n4))
  (define max (mayor n1 n2 n3 n4))
  (define restante1 (cond
                      ((= n1 min) n2)
                      ((= n2 min) n3)
                      ((= n3 min) n4)
                      (else n1)))
  (define restante2 (cond
                      ((or (= n1 min) (= n1 max)) restante1)
                      ((or (= n2 min) (= n2 max)) restante1)
                      ((or (= n3 min) (= n3 max)) restante1)
                      (else n3)))
  (+ (* max 0.50)
     (* restante1 0.25)
     (* restante2 0.25)))

(define (datos)
  (display "Ingrese la primera nota: ")
  (define n1 (read))
  (display "Ingrese la segunda nota: ")
  (define n2 (read))
  (display "Ingrese la tercera nota: ")
  (define n3 (read))
  (display "Ingrese la cuarta nota: ")
  (define n4 (read))

  (display "\nNOTA FINAL: ")
  (display (nota-final n1 n2 n3 n4))
  )

(datos)
)
(define (llamar pron)
  (cond
    ((= pron 1) (PROBLEMA1))
    ((= pron 2) (PROBLEMA2))
    ((= pron 3) (PROBLEMA3))
    ((= pron 4) (PROBLEMA4))
    (else (display "Número de problema no válido\n"))))

(display "Ingrese el número del problema que desea ejecutar: ")
(llamar (read))




























































