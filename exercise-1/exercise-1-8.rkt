#lang sicp

(define (square x) (* x x))

(define (good-enough? previous-guess guess)
(< (abs (/ (- guess previous-guess) guess)) 0.0000001))

(define (improve-cbrt guess x) (/ (+ (/ x (square guess)) (* guess 2)) 3.0))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve-cbrt guess x))
          guess
          (cbrt-iter (improve-cbrt guess x) x)))