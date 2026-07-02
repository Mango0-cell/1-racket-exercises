;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |racket taller a s 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;EJERCICIOS:
(define x 2)
(define y 3)
(define z 4)
(define -x -2)
;a) (2x ^ 2 - 5x + 3) - (x - 2)(2x - 5) 
(- (+(- (*(expt x 2)2) (* 5 x))3) (*(- x 2) (-(* 2 x) 5))) ;1

;b) 3x(5x ^ 2 - 4) + (x ^ 2 - 5)(2x + 3)
(+(*(* 3 x) (-(*(expt x 2)5)4)) (*(-(expt x 2)5) (+(* 2 x)3))) ;89

;c) (5x-3)(x-2)-( 3x - 4)(- 2x + 7)
(-(*(-(* 5 x)3) (- x 2)) (*(-(* 3 x)4) (+(* -2 x)7))) ;-6

;d) 4x - x(5x - 3) - (- 5x ^ 2 - 3x)
(-(-(* 4 x)(*(-(* 5 x)3)x))  (-(*(expt x 2)-5) (* 3 x)))  ;20

;e) 2x(3x ^ 2 - 5x + 2) - (3x ^ 3 - 5x ^ 2 + x - 1)
(-(*(* 2 x) (+(-(*(expt x 2)3) (* 5 x))2)) (-(+(-(*(expt x 3)3) (*(expt x 2)5))x)1)) ;11

;f) (2x - 3)(- 5x + 2)(5x + 1)
(*(*(-(* 2 x)3) (+(* -5 x)2)) (+(* 5 x)1)) ;-88

;g) (3x ^ 2 * y - 2xy ^ 2 + xy) - (5x ^ 2 y - 8xy ^ 2 - 3xy) - (x ^ 2y + 2xy)
(-(-(+(-(*(*(expt x 2)3)y) (*(* 2 x)(expt y 2))) (* x y)) (-(-(*(*(expt x 2)5)y) (*(* 8 x)(expt y 2))) (*(* 3 x)y))) (+(*(expt x 2)y) (*(* 2 x)y))) ;84

;h) (2x - y)(3x + 2y) - (x ^ 2 + 3xy - 4y ^ 2)
(-(*(-(* 2 x)y) (+(* 3 x) (* 2 y))) (-(+(expt x 2) (*(* 3 x)y)) (*(expt y 2)4))) ;26

;i)(3x - 2)(- x ^ 2 + 5x - 2) - (2x - 4) ^ 2
(-(*(-(* 3 x)2) (-(+(expt -x 2) (* 5 x))2)) (expt (-(* 2 x)4) 2)) ; 48

;j)(3x + 2) ^ 2 - 5x(x ^ 2 - 4x + 1)
(-(expt (+(* 3 x)2) 2) (*(* 5 x) (+(-(expt x 2) (* 4 x))1))) ;94

;k) (4x + 3)(- 2x ^ 2 - 2x + 1) - (5x + 3) ^ 2
(-(*(+(* 4 x)3) (+(-(*(expt x 2)-2) (* 2 x))1)) (expt (+(* 5 x)3)2)) ;-290

;l) (x - 3) ^ 2 - 2x(3x ^ 2 - x + 3)
(-(expt(- x 3)2) (*(+(-(*(expt x 2)3)x)3) (* 2 x))) ;-51

;m) (x - y) ^ 2 - (x + y) ^ 2 - (x + y)(x - y)
(-(-(expt (- x y) 2) (expt (+ x y) 2)) (* (+ x y) (- x y))) ;-19

; n) (2x + 3y) ^ 2 - (4x - y) ^ 2
(-(expt(+ (* 2 x) (* 3 y))2) (expt(-(* 4 x)y)2)) ;144

;ñ) (5x - 3y) ^ 2 - (4x + 6y) ^ 2
(-(expt(-(* 5 x) (* 3 y))2) (expt(+(* 4 x) (* 6 y))2)) ;-675

;o) (3x + y)(3x - y) + (5x + 2y) ^ 2 - (2x - 4y) ^ 2
(-(+(*(+(* 3 x)y) (-(* 3 x)y)) (expt(+(* 5 x)(* 2 y))2)) (expt(-(* 2 x) (* 4 y))2)) ;219

;p) (3x - 2)(5x + 3)(- 2x - 4)
(*(*(-(* 3 x)2) (+(* 5 x)3)) (-(* -2 x)4)) ;-416

;q (2x - 3y) ^ 3
(expt(-(* 2 x) (* 3 y))3) ;-125

;r) (5x + 3y - 2z) ^ 2
(expt(-(+(* 5 x) (* 3 y)) (* 2 z))2) ;121

;s) (a - b - c) ^ 2 - (a + b - c) ^ 2
(define a 1)
(define b 2)
(define c 3)
(-(expt(-(- a b)c)2) (expt(-(+ a b)c)2)) ;16

















