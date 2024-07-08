(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    guess
    (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (approx x guess))

(define (approx x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))


(define (good-enough? guess improved-guess)
  (< (abs (- guess improved-guess)) 0.0001))

(define (cbrt x)
  (cbrt-iter 2.0 x))

(cbrt 64)
(cbrt 128)
(cbrt 713)
