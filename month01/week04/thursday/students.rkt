;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname students) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 1. Бүтэц болон туршилтын сурагчдын өгөгдөл
(define-struct student (name final))

(define ren (make-student "ren" 45))
(define students 
  (list (make-student "Aki" 90) 
        (make-student "Boba" 85) 
        (make-student "Mina" 74.6) 
        (make-student "Ren" 40)))

;; 2. final-score : Student -> Number
;; Сурагчийн эцсийн оноог салгаж авах функц
(define (final-score s)
  (student-final s))

;; 3. passing? : Student -> Boolean
;; Сурагч тэнцсэн эсэх (60-аас дээш оноотой эсэх)
(define (passing? s)
  (>= (final-score s) 60))

;; count-passing : List-of-students -> Number
;; Тэнцсэн сурагчийн тоо
(define (count-passing number)
  (cond
    [(empty? number) 0]
    [else (if (passing? (first number)) 
              (+ 1 (count-passing (rest number))) 
              (count-passing (rest number)))]))

(check-expect (count-passing empty) 0)
(check-expect (count-passing students) 3)
(check-expect (count-passing (list ren)) 0)

;; 4. total-final : List-of-students -> Number
;; Бүх сурагчийн эцсийн онооны нийлбэр
(define (total-final score)
  (cond
    [(empty? score) 0]
    [else (+ (final-score (first score)) (total-final (rest score)))]))
  
(check-expect (total-final empty) 0)
(check-expect (total-final students) 289.6)

;; 5. count-students : List-of-students -> Number
;; Нийт сурагчдын тоо
(define (count-students number)
  (cond
    [(empty? number) 0]
    [else (+ 1 (count-students (rest number)))]))

(check-expect (count-students empty) 0)
(check-expect (count-students students) 4)