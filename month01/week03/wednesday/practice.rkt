;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Хамгийн их утга хоосон list-д байхгүй
;;Хамгийн их оноо, дундаж зэрэг нь хоосон list-д утгагүй. 0 гэж хариулбал "хүн бүр 0 авсан" гэж андуурагдана. Тиймээс эдгээр function зөвхөн хоосон биш list авна гэж data definition-оор хэлнэ:

;; NEList-of-numbers is one of:
;; – (cons Number empty)
;; – (cons Number NEList-of-numbers)
;;Base case нь хоосон list биш, нэг элементтэй list. Template ч үүнийг дагана:

(define (fun-for-nelon l)
  (cond
    [(empty? (rest l)) (... (first l) ...)]
    [else (... (first l) ... (fun-for-nelon (rest l)) ...)]))
;;Жишээ: сүүлийн элемент.

;; last-item : NEList-of-numbers -> Number
(check-expect (last-item (cons 7 empty)) 7)
(check-expect (last-item (cons 1 (cons 2 (cons 3 empty)))) 3)

(define (last-item l)
  (cond
    [(empty? (rest l)) (first l)]
    [else (last-item (rest l))]))

;;Ex01
;; contains? : Number List-of-numbers -> Boolean
;; target list дотор байвал #t
(define (contains?  target lon)
  (cond
    [(empty? lon) #f]
    [else (or (= (first lon) target)
              (contains? target (rest lon)))]))
 
(check-expect (contains? 5 empty) #f)
(check-expect (contains? 5 (cons 3 (cons 5 (cons 7 empty)))) #t)
(check-expect (contains? 4 (cons 3 (cons 5 empty))) #f)

;; count-greater-than : List-of-numbers Number -> Number
;; limit-ээс ИХ (тэнцүү биш) тоонуудын тоо
(define (count-greater-than number limit)
  (cond
    [(empty? number ) 0]
    [(> (first number) limit)
     (+ 1 (count-greater-than (rest number) limit))]
    [else (count-greater-than (rest number) limit)]))
(check-expect (count-greater-than empty 5) 0)
(check-expect (count-greater-than (cons 2 (cons 8 (cons 10 empty))) 5) 2)
(check-expect (count-greater-than (cons 5 (cons 6 empty)) 5) 1)   ; 5 тоологдохгүй


;;Ex02
;;NEList-of-numbers
1. ;;find-max
;; find-max : NEList-of-numbers -> Number
;; хамгийн их утга. max ашиглаж болно: (max 3 8) → 8
(define (find-max number)
  (cond
    [(empty? (rest number)) (first number)]
    [else (max (first number)
               (find-max (rest number)))]))

(check-expect (find-max (cons 70 empty)) 70)
(check-expect (find-max (cons 70 (cons 95 (cons 63 empty)))) 95)
(check-expect (find-max (cons -5 (cons -2 empty))) -2)


;; average : NEList-of-numbers -> Number
;; дундаж = sum / count-items. Хоосон биш тул 0-д хуваахгүй.
(define (count-items number)
  (cond
    [(empty? (rest number)) 1]
    [else (+ 1 (count-items (rest number)))]))
(define (sum number)
  (cond
    [(empty? (rest number)) (first number)]
    [else (+ (first number) (sum (rest number)))]))

(define (average number)
  (/ (sum number) (count-items number)))
  
(check-expect (average (cons 80 empty)) 80)
(check-expect (average (cons 70 (cons 82 (cons 95 (cons 63 (cons 88 empty)))))) 79.6)

