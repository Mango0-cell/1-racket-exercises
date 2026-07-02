;TALLER
;1
(define(PROBLEMA1)
(define(leer x y)
  (if(> x y)
     (begin (display "el mayor es ") (display x))
     (begin (display "el mayor es ") (display y))
     )
  )
(define(valores)
  (display "ingrese el primer número ")
  (define x(read))
  (display "ingrese el segundo número ")
  (define y(read))
  (leer x y)
  )
(valores)
  )
;2
(define(PROBLEMA2)
(define(ordenar x y)
  (if(> x y)
     (begin (display y)(display ", ")(display x))
     (begin (display x)(display ", ")(display y))
     )
  )
(define(valores)
  (display "ingrese el primer número ")
  (define x(read))
  (display "ingrese el segundo número ")
  (define y(read))
  (ordenar x y)
  )
(valores)
  )
;3
(define(PROBLEMA3)
(define (número x)
  (if(> x 0)
     "POSITIVO"
     (* x x)
     )
  )
(define (valor)
  (display "ingrese el número ")
  (define x(read))
  (número x)
  )
(valor)
  )
;4
(define(PROBLEMA4)
(define (descuento compra)
  (if(> compra 100000)(* compra 0.80)
     compra
     )
  )
(define (almacen)
  (display "ingrese el costo ")
  (define compra (read))
  (display "el costo con descuento es: ")
  (descuento compra)
  )
(almacen)
  )
;5
(define(PROBLEMA5)
(define (descuento camisas precio)
  (if(> camisas 3)
     (*(* camisas precio)0.8)
     (*(* camisas precio)0.9)
     )
  )
(define (total)
  (display "ingrese el número de camisas ")
  (define camisas(read))
  (define precio 50000)
  (display "total a pagar ")
  (descuento camisas precio)
  )
(total)
  )
;6
(define(PROBLEMA6)
(define (calcular-total-llantas cantidad)
  (define precio-unitario (if (>= cantidad 5) 70000 80000))  
  (define total (* cantidad precio-unitario)) 
  
  (display "Total a pagar por ")
  (display cantidad)
  (display " llantas a $")
  (display precio-unitario)
  (display " c/u: ")
  (display total)
  (newline))  
(define (compra-llantas)
  (display "Ingrese la cantidad de llantas a comprar: ")
  (define cantidad (read))
  (calcular-total-llantas cantidad))

(compra-llantas)
  )
;7
(define(PROBLEMA7)
(define (comparar a b)
  (if (= a b)
      (display (* a b))
      (if (> a b)
          (display (- a b))
          (display (+ a b)))))

(define (valores)
  (display "Ingrese el primer número: ")
  (define a (read))
  (display "Ingrese el segundo número: ")
  (define b (read))
  (comparar a b))

(valores)
  )
;8
(define(PROBLEMA8)
(define (encontrar-mayor x y z)
  (if (and (>= x y) (>= x z))
      x
      (if (and (>= y x) (>= y z))
          y
          z)))

(define (valores)
  (display "Ingrese el primer número: ")
  (define x (read))
  (display "Ingrese el segundo número: ")
  (define y (read))
  (display "Ingrese el tercer número: ")
  (define z (read))
  (begin
    (display "El número mayor es: ")
    (display (encontrar-mayor x y z))))

(valores)
  )
;9
(define(PROBLEMA9)
(define (verificar-y-mostrar nombre edad sexo estado-civil)
  (if (and (>= edad 18) (= estado-civil 1))
      (begin
        (display "\nDatos de la persona:")
        (display "\nNombre: ")
        (display nombre)
        (display "\nEdad: ")
        (display edad)
        (display "\nSexo: ")
        (if (= sexo 1)
            (display "Masculino")
            (display "Femenino"))
        (display "\nEstado civil: Soltero/a"))
      (display "\nLa persona no cumple con ser soltera y mayor de edad.")))

(define (leer-datos)
  (display "Ingrese el nombre: ")
  (define nombre (read))
  (display "Ingrese la edad: ")
  (define edad (read))
  (display "Ingrese el sexo (1=Masculino/2=Femenino): ")
  (define sexo (read))
  (display "Ingrese el estado civil (1=Soltero/2=Casado/3=Otro): ")
  (define estado-civil (read))
  (verificar-y-mostrar nombre edad sexo estado-civil))

(leer-datos)
  )
;10
(define(PROBLEMA10)
(define (mostrar-datos nombre edad genero estado-civil)
  (if (equal? genero "mujer")
      (if (and (>= edad 18) (equal? estado-civil "casada"))
          (begin
            (display "Nombre: ")
            (display nombre)
            (display "\nEdad: ")
            (display edad))
          (display nombre))
      (if (equal? estado-civil "soltero")
          (display nombre)
          (begin
            (display "Nombre: ")
            (display nombre)
            (display "\nEdad: ")
            (display edad)))))

(define (ingresar-datos)
  (display "Ingrese el nombre: ")
  (define nombre (read))
  (display "Ingrese la edad: ")
  (define edad (read))
  (display "Ingrese el género (1/mujer o 2/hombre): ")
  (define genero (read))
  (display "Ingrese el estado civil (1/soltero o 2/casada o 3/otro): ")
  (define estado-civil (read))
  (mostrar-datos nombre edad genero estado-civil))

(ingresar-datos)
  )
;11
(define(PROBLEMA11)
(define (persona dato)
  (if(= dato 1) "ADULTO"
     (if(= dato 2) "JOVEN"
        (if(= dato 3) "NIÑO"
           "error"
           )
        )
     )
  )
(define (valor)
  (display "ingrese su nivel de longevidad, si es adulto, 1; si es joven, 2; si es niño, 3 ")
  (define dato(read))
  (persona dato)
  )
(valor)
  )
;12
(define(PROBLEMA12)
(define (monto credito)
  (if (< credito 500000) 
      (* credito 0.03)
      (* credito 0.02)))  
(define (cuota)
  (display "Ingrese el valor del crédito: ")
  (define credito (read))
  (display "La cuota que debe pagar el cliente es: ")
  (define cuota (monto credito))
  (display cuota)
  (newline)
  (display "La suma de la cuota y el crédito es: ")
  (display (+ credito cuota))
  (newline))

(cuota)
  )
;13
(define(PROBLEMA13)
(define (porcentaje patrimonio estrato)
  (if(and(> patrimonio 2000000) (> estrato 3))
     (+ 500000(* patrimonio 0.03))
     500000
     )
  )
(define (matricula)
  (display "ingrese su número de inscripción ")
  (define n(read))
  (display "ingrese su nombre ")
  (define name(read))
  (display "ingrese su patrimonio actual ")
  (define patrimonio(read))
  (display "ingrese su estrato social (1 a 6) :")
  (define estrato(read))
  (display "el pago que debe efectuar es de: ")
  (porcentaje patrimonio estrato)
  )
(matricula)
  )
;14
(define(PROBLEMA14)
(define (porcentaje estrato)
  (if(or(= estrato 1)(= estrato 2))
     (+ 80000(* 80000 0.05))
     (if(or(= estrato 3)(= estrato 4))
        (+ 80000(* 80000 0.10))
        (if(or(= estrato 5)(= estrato 6))
           (+ 80000(* 80000 0.20))
           "ocurriò un error"
           )
        )
     )
  )
(define (servicios)
  (display "ingrese su nombre: ")
  (define name(read))
  (display "ingrese su direcciòn: ")
  (define direccion(read))
  (display "ingrese su estrato (1 a 6) : ")
  (define estrato(read))
  (porcentaje estrato)
  )
(servicios)
  )
;15
(define(PROBLEMA15)
(define(descuento costo marca)
  (if(and(>= costo 1000000)(= marca 2))
     (- costo(* costo 0.10));sin IVA
     (if(and(>= costo 1000000)(= marca 1))
        (- costo(* costo 0.15));sin IVA
        (if(= marca 1)
           (- costo(* costo 0.05)) ;sin IVA
           (if(or(< costo 1000000)(= marca 2))
              (+ costo(* costo 0.20))
              "ocurriò un error"
              )
           )
        )
     )
  )
(define (variables)
  (display "ingrese el costo del computador: ")
  (define costo(read))
  (display "si la marca es ABACO, ingrese 1; si es cualquier otra, ingrese 2 ")
  (define marca(read))
  (descuento costo marca)
  )
(variables)
  )
 ;16
(define(PROBLEMA16)
(define (calcular n p)
  (if (<= n 48)
      (display (* n p))
      (if (<= (- n 48) 8)
          (display (+ (* 48 p) (* (- n 48) 2 p)))
          (display (+ (* 48 p) (* 8 2 p) (* (- n 56) 3 p))))))

(define (salario)
  (display "Horas: ")
  (define h (read))
  (display "Valor hora: ")
  (define v (read))
  (calcular h v))

(salario)
  )

;17
(define(PROBLEMA17)
(define (calcular n v)
  (if (<= n 2)
      (display v)
      (if (<= n 5)
          (display (* v 0.9))
          (if (<= n 10)
              (display (* v 0.85))
              (display (* v 0.82))))))

(define (compra)
  (display "Peras: ")
  (define p (read))
  (display "Valor: ")
  (define v (read))
  (calcular p v))

(compra)
  )
;18
(define(PROBLEMA18)
(define (calcular a s)
  (if (< a 1)
      (display (* s 0.05))
      (if (< a 2)
          (display (* s 0.07))
          (if (< a 5)
              (display (* s 0.1))
              (if (< a 10)
                  (display (* s 0.15))
                  (display (* s 0.2)))))))

(define (utilidad)
  (display "Años: ")
  (define a (read))
  (display "Salario: ")
  (define s (read))
  (calcular a s))

(utilidad)
)
;19
(define(PROBLEMA19)
(define (calcular n)
  (if (< n 5)
      (display (* n 30000))
      (if (<= n 10)
          (display (* n 25000))
          (display (* n 20000)))))

(define (llantas)
  (display "Llantas: ")
  (define n (read))
  (calcular n))

(llantas)
  )

;20
(define(PROBLEMA20)
(define (calcular e s t n v)
  (if (and (= s 2) (= t 1) (>= e 35) (<= e 45))
      (display (* v 3))
      (if (and (= s 1) (= n 1) (= t 3) (< e 30))
          (display (/ v 3))
          (if (and (= s 2) (= n 3) (> e 55))
              (display (- v 50000))
              (display v)))))

(define (datos)
  (display "Edad: ")
  (define e (read))
  (display "Sexo(1=hombre,2=mujer): ")
  (define s (read))
  (display "Tipo(1=alto,2=bajo,3=medio): ")
  (define t (read))
  (display "Nacionalidad(1=latino,2=aleman,3=hindú,4=colombiano): ")
  (define n (read))
  (display "Valor: ")
  (define v (read))
  (calcular e s t n v))

(datos)
  )
;FUNCIÓN BUSCADORA
(define(llamar pron)
  (cond(= pron 1)
     (PROBLEMA1)
     (if(= pron 2)
        (PROBLEMA2) 
        (if(= pron 3) 
           (PROBLEMA3) 
           (if(= pron 4)
              (PROBLEMA4)
              (if (= pron 5)
                  (PROBLEMA5)
                  (if(= pron 6)
                     (PROBLEMA6)
                     (if(= pron 7)
                        (PROBLEMA7)
                        (if(= pron 8)
                           (PROBLEMA8)
                           (if(= pron 9)
                              (PROBLEMA9) 
                              (if(= pron 10)
                                 (PROBLEMA10)
                                 (if(= pron 11)
                                    (PROBLEMA11)
                                    (if (= pron 12)
                                        (PROBLEMA12)
                                        (if(= pron 13)
                                           (PROBLEMA13)
                                           (if(= pron 14)
                                              (PROBLEMA14)
                                              (if(= pron 15)
                                                 (PROBLEMA15)
                                                 (if(= pron 16)
                                                    (PROBLEMA16)
                                                    (if(= pron 17)
                                                       (PROBLEMA17)
                                                       (if(= pron 18)
                                                          (PROBLEMA18)
                                                          (if(= pron 19)
                                                             (PROBLEMA19)
                                                             (if (= pron 20)
                                                                 (PROBLEMA20)
                                                                 "Problema no válido"
                                                                 )
                                                             )
                                                          )
                                                       )
                                                    )
                                                 ) 
                                              )
                                           )
                                        )
                                    )
                                 )
                              )
                           )
                        )
                     )
                  )
              )
           )
        )
     )
  )
       
(llamar(read))
           
         
                (cond
    ((and (= (quotient (modulo a 100) 10) 1) (= (modulo a 10) 0)) "diez ")
    ((and (= (quotient (modulo a 100) 10) 1) (= (modulo a 10) 1)) "once ")
    ((and (= (quotient (modulo a 100) 10) 1) (= (modulo a 10) 2)) "doce ")
    ((and (= (quotient (modulo a 100) 10) 1) (= (modulo a 10) 3)) "trece ")
    ((and (= (quotient (modulo a 100) 10) 1) (= (modulo a 10) 4)) "catorce ")
    ((and (= (quotient (modulo a 100) 10) 1) (= (modulo a 10) 5)) "quince ")
    ((= (quotient (modulo a 100) 10) 1) "diez y ")
    ((= (quotient (modulo a 100) 10) 2) (if (= (modulo a 10) 0) "veinte " "veinti "))
    ((= (quotient (modulo a 100) 10) 3) (if (= (modulo a 10) 0) "treinta " "treinta y "))
    ((= (quotient (modulo a 100) 10) 4) (if (= (modulo a 10) 0) "cuarenta " "cuarenta y "))
    ((= (quotient (modulo a 100) 10) 5) (if (= (modulo a 10) 0) "cincuenta " "cincuenta y "))
    ((= (quotient (modulo a 100) 10) 6) (if (= (modulo a 10) 0) "sesenta " "sesenta y "))
    ((= (quotient (modulo a 100) 10) 7) (if (= (modulo a 10) 0) "setenta " "setenta y "))
    ((= (quotient (modulo a 100) 10) 8) (if (= (modulo a 10) 0) "ochenta " "ochenta y "))
    ((= (quotient (modulo a 100) 10) 9) (if (= (modulo a 10) 0) "noventa " "noventa y "))
    (else "")))

(define (unidades a)
  (cond
    ((and (= (quotient (modulo a 100) 10) 1) (> (modulo a 10) 0)) "")  
    ((= (modulo a 10) 1) "uno")
    ((= (modulo a 10) 2) "dos")
    ((= (modulo a 10) 3) "tres")
    ((= (modulo a 10) 4) "cuatro")
    ((= (modulo a 10) 5) "cinco")
    ((= (modulo a 10) 6) "seis")
    ((= (modulo a 10) 7) "siete")
    ((= (modulo a 10) 8) "ocho")
    ((= (modulo a 10) 9) "nueve")
    (else "")))

(define (principal)
  (display "Escriba un número de máximo 3 cifras (0 a 999): ")
  (define a (read))
  (if (and (>= a 0) (<= a 999))
      (begin
        (display (centenas a))
        (display (decenas a))
        (display (unidades a))
        (newline))
      (display "ingrese un número dentro del rando")))
(principal)
)       
                      
          
     
      
     








     
     





  




  














  
  
  
           












 
           
           






  
     















  

         











  









            
  




















         
  


























































