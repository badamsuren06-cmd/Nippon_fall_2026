;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (square x)
  (* x x))
(define (sum-of-squares a b)
  (+ (square a) (square b)))

;; bytes-to-bits : Number -> Number
;; byte-ийн тоог bit болгоно (1 byte = 8 bit)
 (define (bytes-to-bits byte)
   (* byte 8))
 (bytes-to-bits 28)
 (define (kib-to-bytes kib)
   (* kib 1024))
;; kib-to-bytes : Number -> Number
;; KiB-ийн тоог byte болгоно (1 KiB = 1024 byte)
 (define (kib-to-bits kib)
   (bytes-to-bits (kib-to-bytes kib)))
 (check-expect (kib-to-bits 1) 8192)
(check-expect (kib-to-bits 2) 16384)
;; item-total : Number Number -> Number
;; нэгж үнэ ба тоо ширхэгээс нийт үнэ
(define (item-total price count)
  (* price count))
(check-expect (item-total 5000 3) 15000)
(check-expect (item-total 1200 0) 0)

;; discount-amount : Number Number -> Number
;; нийт үнэ ба хувиас хөнгөлөлтийн хэмжээ.
;; Хувийг бүхэл тоогоор өгнө: 10 гэвэл 10% (0.1 биш).
(define (discount-amount total discount)
  (* total (/ discount 100)))
(check-expect (discount-amount 15000 10) 1500)
(check-expect (discount-amount 15000 0) 0)

;; final-price : Number Number Number -> Number
;; нэгж үнэ, тоо ширхэг, хувь → хөнгөлөлт хассан үнэ.
;; item-total, discount-amount-г дуудна.
(define (final-price price count discount)
  (- (item-total price count)
  (discount-amount (item-total price count) discount)))
(check-expect (final-price 5000 3 10) 13500)
(check-expect (final-price 5000 3 0) 15000)
;; sum3 : Number Number Number -> Number
;; гурван тооны нийлбэр
(define (sum3 a b c)
  (+ a b c))
(check-expect (sum3 10 20 30) 60)
;; average3 : Number Number Number -> Number
;; гурван тооны дундаж. sum3-г дуудна.
(define (average3 a b c)
  (/ (sum3 a b c) 3))
(check-expect (average3 60 80 100) 80)
(check-expect (average3 0 0 90) 30)
(check-expect (> 10 5) #t)       
(check-expect (= (+ 2 3) 5) #t)
(check-expect (>= 18 20) #f)
(check-expect (even? 14) #t)
(check-expect (positive? -3) #f)
(check-expect (odd? 17) #t)
;;predicate
(check-expect (zero? 0) #t)
;;Predicate Example
(define (adult? age)
  (>= age 18))
(check-expect (adult? 19) #t)
(check-expect (adult? 15) #f)

(define (passing-average? a b c)
  (>= (average3 a b c) 60))
(check-expect(passing-average? 40 50 50) #f)
(check-expect(passing-average? 70 100 80) #t)

