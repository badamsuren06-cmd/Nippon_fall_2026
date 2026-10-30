;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; count-zeros : List-of-numbers -> Number
;; 0-ийн тоо
(define (count-zeros number)
  (cond
    [(empty? number) 0]
    [(zero? (first number)) (+ 1 (count-zeros (rest number)))]
    [else (count-zeros (rest number))]))
(check-expect (count-zeros empty) 0)
(check-expect (count-zeros (cons 0 (cons 5 (cons 0 empty)))) 2)

;; all-positive? : List-of-numbers -> Boolean
;; бүх тоо эерэг бол #t. Хоосон list-д эерэг биш тоо байхгүй тул #t.
(define (all-positive? numbers)
  (cond
    [(empty? numbers) #t]
    [else (and (> (first numbers) 0)
               (all-positive? (rest numbers)))]))
(check-expect (all-positive? empty) #t)
(check-expect (all-positive? (cons 1 (cons 2 empty))) #t)
(check-expect (all-positive? (cons 1 (cons 0 empty))) #f)

;; stack-all : List-of-images -> Image
;; бүх зургийг дээрээс доош тавина
(require 2htdp/image)
(define (stack-all image)
  (cond
    [(empty? image) empty-image]
    [else (above (first image)
                 (stack-all (rest image)))]))
    
(check-expect (stack-all empty) empty-image)
(check-expect (stack-all (cons (circle 10 "solid" "red") (cons (circle 10 "solid" "blue") empty)))
              (above (circle 10 "solid" "red") (circle 10 "solid" "blue")))

