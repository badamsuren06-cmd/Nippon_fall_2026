;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; 1. Struct (Бүтэц) тодорхойлох
(define-struct student (name quiz project))

;; 2. Тестэд ашиглагдах сурагчдын констант утгууд
(define aki (make-student "Aki" 85 85))
(define sora (make-student "Sora" 60 60))
(define ren (make-student "Ren" 51 51))
(define mina (make-student "Mina" 95 91))

;; 3. Бааз & Туслах функцууд
(define (plain-average s)
  (/ (+ (student-quiz s) (student-project s)) 2))

(define (final-score s)
  (plain-average s))

(define (student-grade s)
  (cond
    [(>= (final-score s) 90) "A"]
    [(>= (final-score s) 80) "B"]
    [(>= (final-score s) 70) "C"]
    [(>= (final-score s) 60) "D"]
    [else "F"]))

(define (passing? s)
  (>= (final-score s) 60))

;; 4. Үндсэн функцууд

;; better-student : Student Student -> Student
;; эцсийн оноо нь их сурагч; тэнцүү бол эхнийх
(define (better-student s1 s2)
  (if (>= (final-score s1) (final-score s2))
      s1
      s2))

(check-expect (better-student aki mina) mina)
(check-expect (better-student mina aki) mina)
(check-expect (better-student sora (make-student "Tie" 60 60)) sora)

;; same-grade? : Student Student -> Boolean
;; хоёулаа ижил үсгэн үнэлгээтэй бол #true. string=? ашигла.
(define (same-grade? s1 s2)
  (string=? (student-grade s1) (student-grade s2)))

(check-expect (same-grade? aki (make-student "Ben" 85 85)) #true)
(check-expect (same-grade? aki mina) #false)

;; points-to-pass : Student -> Number
;; 60 хүрэхэд хэдэн оноо дутуу вэ; тэнцсэн бол 0
(define (points-to-pass s)
  (if (passing? s)
      0
      (- 60 (final-score s))))

(check-expect (points-to-pass ren) 9)
(check-expect (points-to-pass sora) 0)
(check-expect (points-to-pass aki) 0)