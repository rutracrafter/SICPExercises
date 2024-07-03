; Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (square x) (* x x))

(define (>= a b) (or (> a b) (= a b)))

(define (sumOfSquaresOf2Largest x y z)
  (cond ((and (>= x y) (>= y z)) (+ (square x) (square y)))
	((and (>= x z) (>= z y)) (+ (square x) (square z)))
	((and (>= y x) (>= x z)) (+ (square y) (square x)))
	((and (>= y z) (>= z x)) (+ (square y) (square z)))
	((and (>= z x) (>= x y)) (+ (square z) (square x)))
	(else (+ (square z) (square y)))
  )
)

(sumOfSquaresOf2Largest 3 2 1)
(sumOfSquaresOf2Largest 5 1 3)
(sumOfSquaresOf2Largest 2 5 1)
(sumOfSquaresOf2Largest 2 4 3)
(sumOfSquaresOf2Largest 2 1 7)
(sumOfSquaresOf2Largest 1 4 5)
