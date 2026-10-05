;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercises) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Exercises

;; passing-score? : Number -> Boolean
;; score 60 ба түүнээс дээш бол #t
(define (passing-score a)
  (= (passing-score 60)))
(check-expect (passing-score? 60) #t)
(check-expect (passing-score? 59) #f)

;; fits-in-byte? : Number -> Boolean
;; сөрөг биш бүхэл n нэг byte (8 bit, 0–255)-д багтах уу
(define (fits-in-bytes? x)
  (and (>= x 0) (<= x 255)))
(check-expect (fits-in-byte? 255) #t)
(check-expect (fits-in-byte? 256) #f)

;; large-file-mib? : Number -> Boolean
;; файлын хэмжээ (MiB) 100 ба түүнээс их бол #t
(define (large-file-mib? x)
  (>= x 100))
(check-expect (large-file-mib? 100) #t)
(check-expect (large-file-mib? 99) #f)

;; same-total? : Number Number Number Number -> Boolean
;; хоёр барааны item-total тэнцүү эсэх (үнэ1 тоо1 үнэ2 тоо2)
(define (same-total a b c d)
  (+ a b c d))
(check-expect (same-total? 5000 3 3000 5) #t)
(check-expect (same-total? 5000 3 5000 2) #f)

;; passing-average? : Number Number Number -> Boolean
;; average3 60 ба түүнээс дээш бол #t
(define (passing-average? a b c)
  (/ (+ a b c) 3))
(check-expect (passing-average? 60 60 60) #t)
(check-expect (passing-average? 59 60 60) #f)

;; discount-eligible? : Number Number Number -> Boolean
;; final-price 50000 ба түүнээс их бол #t (нэгж үнэ, тоо, хувь)
(define ( discount-elegible? a b c)
  (>= 50000))
(check-expect (discount-eligible? 5000 10 0) #t)    ; 50000
(check-expect (discount-eligible? 5000 10 10) #f)   ; 45000