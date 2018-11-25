#lang racket
(define (square x) (* x x))
(define (average x y)
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (/ (- x guess) guess)) 0.00001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))