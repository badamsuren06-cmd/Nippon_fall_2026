;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname debug) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; 1. Бүтэц ба үндсэн өгөгдөл
(define-struct student (name quiz project))

(define aki (make-student "Aki" 85 85))
(define sora (make-student "Sora" 60 60))
(define ren (make-student "Ren" 51 51))
(define mina (make-student "Mina" 95 91))

;; 2. Дундаж болон туслах функцууд (Үүнийг заавал оруулна)
(define (plain-average s)
  (/ (+ (student-quiz s) (student-project s)) 2))

(define (final-score s)
  (plain-average s))

(define (passing? s)
  (>= (final-score s) 60))

;; 3. Таны бичсэн 5 функц болон тестүүд

;; 1. better-student
(define (better-student a b)
  (if (>= (final-score a) (final-score b)) a b))
(check-expect (better-student sora (make-student "Tie" 60 60)) sora)

;; 2. points-to-pass
(define (points-to-pass s)
  (if (passing? s)
      0
      (- 60 (final-score s))))
(check-expect (points-to-pass aki) 0)

;; 3. rename
(define (rename s new-name)
  (make-student new-name (student-quiz s) (student-project s)))
(check-expect (rename aki "Akira") (make-student "Akira" (student-quiz aki) (student-project aki)))

;; 4. score-label
(define (score-label s)
  (text (number->string (final-score s)) 24 "black"))
(check-expect (score-label sora) (text "60" 24 "black"))

;; 5. perfect-project?
(define (perfect-project? s)
  (= (student-project s) 100))
(check-expect (perfect-project? aki) #false)