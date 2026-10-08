;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname grade-system) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum3 : Number Number Number -> Number
(define (sum3 a b c)
  (+ a b c))
(check-expect (sum3 80 90 70) 240)

;; average3 : Number Number Number -> Number
;; гурван тооны дундаж. sum3-г дуудна.
(define (average3 a b c)
  (/ (sum3 a b c)3))
(check-expect (average3 80 90 70) 80)
(check-expect (average3 60 60 60) 60)

;; assignment-percent : Number Number -> Number
;; хийсэн ба нийт даалгавар → гүйцэтгэлийн хувь (total > 0)
(define (assignment-percent complet total)
  (* (/ complet total) 100))
(check-expect (assignment-percent 8 10) 80)
(check-expect (assignment-percent 7 10) 70)
(check-expect (assignment-percent 0 10) 0)

;; passing-average? : Number Number Number -> Boolean
;; average3 60 ба түүнээс дээш бол #t
(define (passing-average? a b c)
  (>= (/ (+ a b c) 3) 60))
(check-expect (passing-average? 60 60 60) #t)
(check-expect (passing-average? 59 59 59) #f)
(check-expect (passing-average? 100 80 0) #t)   ; дундаж яг 60

;; good-attendance? : Number -> Boolean
;; ирц 80 ба түүнээс дээш бол #t
(define (good-attendance? attendance)
  (>= attendance 80))
(check-expect (good-attendance? 80) #t)
(check-expect (good-attendance? 79) #f)

;; assignments-complete? : Number Number -> Boolean
;; assignment-percent 70 ба түүнээс дээш бол #t. assignment-percent-г дуудна.

(define (assignments-complete? complet total)
  (>= (assignment-percent complet total) 70))
(check-expect (assignments-complete? 7 10) #t)
(check-expect (assignments-complete? 6 10) #f)
(check-expect (assignments-complete? 0 10) #f)

;; eligible? : Number Number Number Number Number Number -> Boolean
;; s1 s2 s3 attendance completed total → гурван шалгуур бүгд үнэн бол #t

(define (eligible-basic? s1 s2 s3 attendance completed total)
  (>= (/ (+ s1 s2 s3) 3) 70))
(define (attendance-pass? s1 s2 s3 attendance completed total)
  (>= attendance 80))
(define (hw-pass? s1 s2 s3  attendance completed total)
  (>= (* (/ completed total) 100) 70))
(define (eligible? s1 s2 s3 attendance completed total)
  (and (eligible-basic? s1 s2 s3 attendance completed total)
       (attendance-pass? s1 s2 s3 attendance completed total)
       (hw-pass? s1 s2 s3  attendance completed total)))
       
(check-expect (eligible? 80 90 70 85 8 10) #t)
(check-expect (eligible? 80 90 70 79 8 10) #f)   ; ирц
(check-expect (eligible? 59 59 59 100 10 10) #f) ; оноо
(check-expect (eligible? 80 90 70 85 6 10) #f)   ; даалгавар

;; final-status : Number Number Number Number Number Number -> String
;; тэнцсэн бол "Eligible", үгүй бол "Not eligible"

(define (final-status s1 s2 s3 attendance completed total)
  (if (eligible? s1 s2 s3 attendance completed total)
      "Eligible"
      "Not eligible"))
  
(check-expect (final-status 80 90 70 85 8 10) "Eligible")
(check-expect (final-status 80 90 70 79 8 10) "Not eligible")

;; letter-grade : Number -> String
;; дундаж оноо → "A" "B" "C" "D" "F" (Мягмарын grade-тэй ижил дүрэм)

(define (letter-grade grade)
  (cond
    [(>= grade 90) "A"]
    [(>= grade 80) "B"]
    [(>= grade 70) "C"]
    [(>= grade 60) "D"]
    [(<= grade 59) "F"]))
    
(check-expect (letter-grade 90) "A")
(check-expect (letter-grade 89) "B")
(check-expect (letter-grade 80) "B")
(check-expect (letter-grade 79) "C")
(check-expect (letter-grade 60) "D")
(check-expect (letter-grade 59) "F")

;; student-grade : Number Number Number -> String
;; гурван оноо → үсгэн дүн. average3 ба letter-grade-г дуудна.
(define (student-grade s1 s2 s3)
  (letter-grade (average3 s1 s2 s3)))

(check-expect (student-grade 80 90 70) "B")
(check-expect (student-grade 100 90 80) "A")

