;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2 дх өдрийн дасгал ажил|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Даснал01
;;(sum (cons 4 (cons 5 empty)))-ийг trace хий.
;;(sum (cons 4 (cons 5 empty)))
;;(+ 4 (sum (cons 5 empty)))
;;(+ 4 (+ 5 (sum empty)))
;;(+ 4 (+ 5 0))

;;Даснал02
;;(sum empty) яагаад 0 вэ? 1 байсан бол (sum (cons 4 empty)) хэд болох вэ?
;;Хоосон list-д нэмэх тоо байхгүй тул 0.
;; 4 + 1 = 5 гэж буруу гарна.

;;Даснал03
;;(sum (cons 10 empty))-д sum нийт хэдэн удаа дуудагдах вэ?
;;2 удаа: (sum (cons 10 empty)) ба (sum empty).

;;Даснал04
;; count-items : List-of-numbers -> Number
;; элементийн тоо
(define (count-items number)
  (cond
    [(empty? number) 0]
    [else (+ 1 (count-items (rest number)))]))

(check-expect (count-items empty) 0)
(check-expect (count-items (cons 7 (cons 8 (cons 9 empty)))) 3)

;; product : List-of-numbers -> Number
;; бүх тооны үржвэр. Хоосон list-ийн үржвэр 1 (0 биш!) — яагаад?
;; 0-ээр үржвэл ямарч тоо байсан 0 болох тул 0-ээр үржиж болохгүй
(define (product number)
  (cond
    [(empty? number) 1]
    [else (* (first number) (product (rest number)))]))
(check-expect (product empty) 1)
(check-expect (product (cons 2 (cons 3 (cons 4 empty)))) 24)

;; contains-zero? : List-of-numbers -> Boolean
;; list дотор 0 байвал #t. or ашигла.
(define (contains-zero? boolean)
  (cond
    [(empty? boolean) #f]
    [else
     (or (= (first boolean) 0)
         (contains-zero? (rest boolean)))]))
(check-expect (contains-zero? empty) #f)
(check-expect (contains-zero? (cons 1 (cons 0 empty))) #t)
(check-expect (contains-zero? (cons 1 (cons 2 empty))) #f)

;; count-even : List-of-numbers -> Number
;; тэгш тоонуудын тоо
(define (count-even number)
  (cond
    [(empty? number) 0]
    [(even? (first number)) (+ 1 (count-even (rest number)))]
    [else (count-even (rest number))]))
(check-expect (count-even empty) 0)
(check-expect (count-even (cons 2 (cons 3 (cons 4 (cons 5 (cons 6 empty)))))) 3)
(check-expect (count-even (cons 1 (cons 3 empty))) 0)

;; count-negative : List-of-numbers -> Number
;; сөрөг тоонуудын тоо (0 сөрөг биш)
(define (count-negative number)
  (cond
    [(empty? number) 0]
    [(negative? (first number)) (+ 1 (count-negative (rest number)))]
    [else (count-negative ( rest number))]))

(check-expect (count-negative (cons -1 (cons 0 (cons -3 empty)))) 2)

;; draw-all : List-of-images -> Image
;; бүх зургийг зүүнээс баруун тийш тавина
(require 2htdp/image)
(define (draw-all image)
  (cond
    [(empty? image) empty-image]
    [else (beside (first image) (draw-all (rest image)))]))
    
    
(check-expect (draw-all empty) empty-image)
(check-expect (draw-all (cons (circle 20 "solid" "red")
                              (cons (rectangle 40 40 "solid" "blue") empty)))
              (beside (circle 20 "solid" "red") (rectangle 40 40 "solid" "blue")))

