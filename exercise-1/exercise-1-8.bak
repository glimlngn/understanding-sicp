#lang sicp

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? previous-guess guess)
(< (abs (/ (- guess previous-guess) guess)) 0.0000001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x) (average guess (/ x guess)))