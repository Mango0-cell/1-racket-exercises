(define (f n)
  (if (<= n 0)
      1
      (+(f (- n 1)) (f (- n 2)))
      )
  )

(define (prime-n n i k)
  (if (= n 1)
      1
      (if (<= i n)
      (if (= (modulo n i)0)
          (prime-n n (+ i 1) (+ k 1))
          (prime-n n (+ i 1) k))
      (if (> k 2)
          1
          0))))

(define (fill-vector x i n count)
  (if (< i (vector-length x))
      (begin
        (vector-set! x i (f n))
        (if (= (prime-n (f n) 1 0)0)
            (fill-vector x (+ i 1)  (+ n 1) (+ 1 count))
        (fill-vector x (+ i 1)  (+ n 1) count)))
  count))

(define (fill-vector2 y i n)
  (if (< i (vector-length y))
        (cond
          ((= (prime-n (f n) 1 0) 0)
            (begin (vector-set! y i (f n)) 
                   (fill-vector2 y (+ i 1)  (+ n 1)))) 
          
            (else
             
             (fill-vector2 y i (+ n 1))))
        y))

(define(main)
  (begin
  (define one (make-vector 10))
  (fill-vector one 0 -1 0)
  (display "vector fibonacci ")
  (display one)
  (define two (make-vector (fill-vector one 0 -1 0)))
  (display "\nprimes vector ")
  (fill-vector2 two 0 -1)))

(main)

