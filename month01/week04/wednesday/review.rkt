;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; 1. Бүтцийн тодорхойлолт
(define-struct student (name quiz project))

;; 2. Тестэнд ашиглагдах сурагчдын мэдээлэл (Даалгаврын жишээ утгууд)
(define aki (make-student "Aki" 85 85))
(define sora (make-student "Sora" 60 60))
(define ren (make-student "Ren" 51 51))

;; --------------------------------------------------
;; plain-average : Student -> Number
;; quiz ба project-ийн энгийн дундаж (жингүй)
(define (plain-average s)
  (/ (+ (student-quiz s) (student-project s)) 2))

(check-expect (plain-average aki) 85)
(check-expect (plain-average sora) 60)
(check-expect (plain-average (make-student "Zero" 0 0)) 0)

;; --------------------------------------------------
;; perfect-project? : Student -> Boolean
;; project яг 100 бол #true
(define (perfect-project? s)
  (= (student-project s) 100))

(check-expect (perfect-project? (make-student "Pat" 50 100)) #true)
(check-expect (perfect-project? aki) #false)
(check-expect (perfect-project? (make-student "Nan" 100 99)) #false)

;; --------------------------------------------------
;; passing? : Student -> Boolean
;; Сурагч тэнцсэн эсэхийг шалгах
(define (passing? s)
  (>= (plain-average s) 60))

;; grade-dot : Student -> Image
;; тэнцсэн бол ногоон, үгүй бол улаан тойрог (радиус 15)
(define (grade-dot s)
  (if (passing? s)
      (circle 15 "solid" "green")
      (circle 15 "solid" "red")))

(check-expect (grade-dot aki) (circle 15 "solid" "green"))
(check-expect (grade-dot sora) (circle 15 "solid" "green"))
(check-expect (grade-dot ren) (circle 15 "solid" "red"))