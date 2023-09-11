#lang racket

(define (square x)
  (* x x))

(square 25)

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 9 2)
