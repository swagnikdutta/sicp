; Exercise 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

#lang racket

(define (square x)
  (* x x))

(define (find-smallest x y z)
  (cond ((and (<= x y) (<= x z)) x)
        ((and (<= y x) (<= y z)) y)
        (else z)))

(define (sum-of-two-largest-squares x y z)
  (define smallest (find-smallest x y z))
  (define sum-of-three-squares (+ (square x) (square y) (square z)))
  (- sum-of-three-squares (square smallest)))

(define (sum-of-two-larger-squares-v2 x y z)
  (define largest (max x y z))
  (define second-largest (cond ((or
                                 (and (<= x y) (<= y z))
                                 (and (<= z y) (<= y x))) y)
                               ((or
                                 (and (<= y x) (<= x z))
                                 (and (<= z x) (<= x y))) x)
                               (else z)))
  (+ (square largest) (square second-largest)))

(define x 5)
(define y 7)
(define z 6)

(sum-of-two-largest-squares x y z)
(sum-of-two-larger-squares-v2 x y z)
