;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname transform) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(list 70 82 95)
; яг ижил утга:
(cons 70 (cons 82 (cons 95 empty)))

(equal? (list 70 82 95) (cons 70 (cons 82 (cons 95 empty))))  ; #true

;;Ex01
;;Хөрвүүлэх
;;(list 4 5)-ийг cons-оор бич.
(cons 4 (cons 5 empty))
;;(list "a" "b" "c")-ийг cons-оор бич.
(cons "a" (cons "b" (cons "c" empty)))
;;(cons 7 (cons 8 empty))-ийг list-ээр бич.
;;(list) юутай тэнцүү вэ?
(list 7 8)

;;List байгуулах recursion
;; double-all : List-of-numbers -> List-of-numbers
;; тоо бүрийг 2 дахин
(check-expect (double-all empty) empty)
(check-expect (double-all (list 1 2 3)) (list 2 4 6))

(define (double-all l)
  (cond
    [(empty? l) empty]                              ; хоосон list → хоосон list
    [else (cons (* 2 (first l)) (double-all (rest l)))]))

(double-all (list 1 2))
;;= (cons 2 (double-all (list 2)))
;;= (cons 2 (cons 4 (double-all empty)))
;;= (cons 2 (cons 4 empty))

;;Ex03
;; add-ten-all : List-of-numbers -> List-of-numbers
(define (add-ten-all numbers)
  (cond
    [(empty? numbers) empty]
    [else
     (cons (+ 10 (first numbers))
           (add-ten-all (rest numbers)))]))
(check-expect (add-ten-all empty) empty)
(check-expect (add-ten-all (list 1 2 3)) (list 11 12 13))

;;Ex04
;; only-positive : List-of-numbers -> List-of-numbers
;; зөвхөн эерэг тоонуудыг үлдээнэ (0 эерэг биш)
(define (only-positive numbers)
  (cond
    [(empty? numbers) empty]
    [(> (first numbers) 0)
     (cons (first numbers)
           (only-positive (rest numbers)))]
    [else (only-positive (rest numbers))]))
     
(check-expect (only-positive empty) empty)
(check-expect (only-positive (list -2 0 5 9)) (list 5 9))

;;Ex05
;; cap-at-100 : List-of-numbers -> List-of-numbers
;; 100-аас их оноог 100 болгоно. min ашиглаж болно.
(define (cap-at-100 numbers)
  (cond
    [(empty? numbers) empty]
    [else
     (cons (min 100 (first numbers))
           (cap-at-100 (rest numbers)))]))
(check-expect (cap-at-100 (list 50 100 150)) (list 50 100 100))