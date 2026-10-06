;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Сэргээх дасгал|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; kb-to-bytes : Number -> Number
(define (kb-to-bytes x)
  (* x 1000))
(check-expect (kb-to-bytes 2)  2000)

;; kb-to-bits : Number -> Number
;; kb-to-bytes, Даваагийн bytes-to-bits-г дуудна
(define (kib-to-bits kib)
  (* (kb-to-bytes kib) 8))
(check-expect (kib-to-bits 2) 16000) ; (kib-to-bits 2) бол 16384
;; can-store? : Number Number -> Boolean
;; файлын хэмжээ, дискний сул зай (KiB) → багтвал #t
(define (can-store? a b)
  (<= (+ a b) 1024))
(check-expect (can-store? 500 512) #t)
(check-expect (can-store? 512 512) #t)   ; хил
(check-expect (can-store? 513 512) #f)
;; cheap-order? : Number Number -> Boolean
;; нэгж үнэ, тоо ширхэг → item-total 10000-аас бага бол #t
(define (cheap-order? a b)
  (< (* a b) 10000))
(check-expect (cheap-order? 2000 4) #t)   ; 8000
(check-expect (cheap-order? 2000 5) #f)   ; 10000, хил
