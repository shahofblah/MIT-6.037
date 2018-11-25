#lang racket
(define (square x) (* x x))


(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (/ (- x guess) guess)) 0.00001))

(define (curt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (curt-iter (improve guess x)
                 x)))