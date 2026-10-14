;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; third-item : List-of-numbers -> Number
;; дор хаяж 3 элементтэй list-ийн гурав дахь утга
;; (Beginning Student-д third гэдэг нэр аль хэдийн байдаг тул third-item)
(define (third-item number)
  (first (rest (rest number))))
(check-expect (third-item (cons 4 (cons 7 (cons 9 empty)))) 9)

;; two-items? : List-of-numbers -> Boolean
;; яг хоёр элементтэй бол #t
(define (two-items? number)
  (cond
    [(empty? number) #f]
    [(empty? (rest number)) #f]
    [else (empty? (rest (rest number)))]))
(check-expect (two-items? empty) #f)
(check-expect (two-items? (cons 1 empty)) #f)
(check-expect (two-items? (cons 1 (cons 2 empty))) #t)
(check-expect (two-items? (cons 1 (cons 2 (cons 3 empty)))) #f)

;; first-or-dot : List-of-images -> Image
;; хоосон бол саарал цэг (circle 5 "solid" "gray"), үгүй бол эхний зураг


(define (first-or-dot images)
  (cond
    [(empty? images) (circle 5 "solid" "gray")]
    [else (first images)]))
  
(check-expect (first-or-dot empty) (circle 5 "solid" "gray"))
(check-expect (first-or-dot (cons (circle 20 "solid" "red") empty)) (circle 20 "solid" "red"))