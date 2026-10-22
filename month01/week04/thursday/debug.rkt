;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname debug) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Ex01
(define-struct student (name quiz project))

(define aki (make-student "Aki" 80 90))
(define mina (make-student "mina" 70 80))
(define sora (make-student "sora" 60 90))
(define ren (make-student "Ren" 50 60))

(define (passing? score)
  (>= score 60))

(define students (list aki mina sora))

(define (count-passing score) 
  (cond [(empty? score) 0]
        [else (if (passing? (student-quiz (first score)))
                  (+ 1 (count-passing (rest score)))
                  (count-passing (rest score)))]))

(check-expect (count-passing students) 3)

;;Ex02
(define (names score)
  (cond [(empty? score) empty] 
        [else (cons (student-name (first score)) (names (rest score)))]))

(check-expect (names (list aki)) (list "Aki"))

;;Ex03
(define (passing-students l)
  (cond [(empty? l) empty]
        [else (if (passing? (student-quiz (first l)))
                  (cons (first l) (passing-students (rest l)))
                  (passing-students (rest l)))]))

(check-expect (passing-students (list ren aki)) (list aki))

(define (best-student l)
  (cond [(empty? (rest l)) (first l)] ; 
        [else (if (> (student-quiz (first l)) 
                     (student-quiz (best-student (rest l))))
                  (first l)
                  (best-student (rest l)))]))

(check-expect (best-student (list aki sora)) aki)

;;Ex04
(define (get-grade score)
  (cond [(>= score 90) "A"]
        [(>= score 80) "B"]
        [(>= score 70) "C"]
        [(>= score 60) "D"]
        [else "F"]))

(define (grades l)
  (cond [(empty? l) empty]
        [else (cons (get-grade (student-quiz (first l))) 
                    (grades (rest l)))]))

(check-expect (grades (list aki sora)) (list "B" "D"))