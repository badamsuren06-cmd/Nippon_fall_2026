;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercises) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define x 10)
;; Exercise
(define width 5)
(define height 8)
(* width height)
;; Exercise
(define radius 7)
  (* pi (sqr radius))
;; Exercise
(define base 10)

(* 1/2 base height)
;; Exercise
(define celsius 25)
(+ (* celsius 9/5) 32)
;; Exercise
(define price 80)
(define tax-rate 0.15)
(+ price (* price tax-rate))
;; Exercise
(define hours 40)
(define pay-rate 15)
(define bonus 100)
(+ (* hours pay-rate) bonus)
;; Exercise
(define (double n)
  (* 2 n))
(double 8)
;; Exercise
(define (square n)
  (* n n))
(square 5)
;; Exercise
(define (cube n)
  (* n n n))
(cube 3)
;; Exercise
(define (area-of-circle radius)
  (* pi (sqr radius)))
(area-of-circle 10)
;; Exercise
(define (celsius->fahrenheit c)
  (+ (* c 9/5) 32))

(celsius->fahrenheit 100)
;; Exercise
(define (total-with-tax price tax-rate)
  (+ price (* price tax-rate)))

(total-with-tax 50 0.10)
;; Exercise
(define (calculate-earnings hours pay-rate bonus)
  (+ (* hours pay-rate) bonus))

(calculate-earnings 35 20 150)
;; Exercise
(define (cylinder-volume radius height)
  (* pi (sqr radius) height))

(cylinder-volume 3 10)