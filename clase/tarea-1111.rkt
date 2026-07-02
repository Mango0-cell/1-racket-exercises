;
(define (intervalo a)
  (if (and (> a 1000) (< 9999))
      "esta en el intervalo"
      "no esta en el intervalo"
      )
  )
(intervalo 1234)

(define (extraer-digitos n)
  (let* ((unidades (modulo n 10))
         (decenas (modulo (quotient n 10) 10))
         (centenas (modulo (quotient n 100) 10))
         (unidades-mil (modulo (quotient n 1000) 10)))
    (display(values unidades-mil))
    (display(values centenas))
    (display(values decenas))
    (display(values unidades))))
(extraer-digitos 1234)
;
(define (mayor4 unidades-mil centenas decenas unidades)
                (if (> unidades-mil centenas)
                    (begin (if (> unidades-mil decenas)
                               (begin (if (> unidades-mil unidades)
                                          (begin
                                            (display "el mayor es: ")
                                             unidades-mil) 
                                          )
                                      )
                               )
                           )     
                    (if (> centenas decenas)
                        (begin (if (> centenas unidades)
                                   (begin
                                     (display "el mayor es: ")
                                     centenas)
                                   )
                               )
                        (if (> decenas unidades)
                            (begin
                              (display "el mayor es: ")
                              decenas)
                            (begin
                              (display "el mayor es: ")
                              unidades)
                            )
                        )
                    )
                )
;
(define (menort)
(define(menor_1 unidades-mil centenas)
  (if(< unidades-mil centenas) unidades-mil
     centenas
     ))
(define(menor_2 decenas unidades)
  (if(< decenas unidades) decenas
     unidades
     ))
(define(menor_3 unidades-mil centenas decenas unidades)
  (if(< (menor_1 unidades-mil centenas) (menor_2 decenas unidades))
     (menor_1 unidades-mil centenas)
     (menor_2 unidades unidades-mil)
     )
  )  
(menor_3)
  )
(+ (mayor4 unidades-mil centenas decenas unidades) (menort))