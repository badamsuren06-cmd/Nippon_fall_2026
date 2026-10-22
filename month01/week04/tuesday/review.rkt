;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum-digits-3 : Number -> Number
;; гурван оронтой тооны цифрүүдийн нийлбэр. remainder, quotient ашигла.
(define (sum-digits-3 numbers)
  (+ (quotient numbers 100)                 
     (remainder (quotient numbers 10) 10)    
     (remainder numbers 10)))

(check-expect (sum-digits-3 507) 12)
(check-expect (sum-digits-3 100) 1)
(check-expect (sum-digits-3 999) 27)

;; quiz-gap : Student -> Number
;; quiz ба project онооны зөрүү (үргэлж эерэг). abs ашигла.
(define-struct student [name quiz project])
(define Aki (make-student "Aki" 80 70))
(define Sora (make-student "Sora" 85 85))
(define Zul (make-student "Zul" 90 70))
(define (quiz-gap score)
  (abs (- (student-quiz score) (student-project score))))
  
(check-expect (quiz-gap Aki) 10)
(check-expect (quiz-gap Sora) 0)
(check-expect (quiz-gap (make-student "Zul" 90 70)) 20)

;; count-a-scores : List-of-numbers -> Number
;; 90 ба түүнээс дээш оноо хэд байгааг тоолно
(define (count-a-scores score)
  (cond
    [(empty? score) 0]
    [(>= (first score) 90)
     (+ 1 (count-a-scores (rest score)))]
    [else
     (count-a-scores (rest score))]))
(check-expect (count-a-scores empty) 0)
(check-expect (count-a-scores (list 90 89 100)) 2)
