;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname project02) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
 ; Функцийн нэр: item-total
 ; Оролт: price quantity
 ; Гаралт: item-total
 ; Томьёо: price * quantity
  ; Хүлээсэн үр дүн: 16000
(define (item-total price quantity)
  (* price quantity))
(item-total 4000 4)
 ; Функцийн нэр: discount-amount 
 ; Оролт: total rate
 ; Гаралт: 4000 * 0.2
 ; Томьёо:  (* total rate)
  ; Хүлээсэн үр дүн:800
(define (discount-amount total rate)
  (* total rate))
(discount-amount 4000 0.2)
 ; Функцийн нэр:tax-amount 
 ; Оролт: price tax-rate
 ; Гаралт:5000 0.10  
 ; Томьёо: (* price tax-rate
  ; Хүлээсэн үр дүн:500
(define (tax-amount price tax-rate)
  (* price tax-rate))
(tax-amount 5000 0.10)
 ; Функцийн нэр: price-per-item 
 ; Оролт: total quantity
 ; Гаралт: 500 / 300
 ; Томьёо: total / quantity
  ; Хүлээсэн үр дүн: 1.6
(define (price-per-item total quantity)
  (/ total quantity))
(price-per-item 500 300)
 ; Функцийн нэр:final-price
 ; Оролт: total discount
 ; Гаралт: 100 - 0.12
 ; Томьёо: total - discount
  ; Хүлээсэн үр дүн:980
(define (final-price total discount)
  (- total discount))
(final-price 1000 20)
 ; Функцийн нэр:total-for-two-products 
 ; Оролт: total-for-two-products
 ; Гаралт: 200 + 152 
 ; Томьёо: price1 + price2  
  ; Хүлээсэн үр дүн:352
(define (total-for-two-products price1 price2)
  (+ price1 price2))
(total-for-two-products 200 152)
  


