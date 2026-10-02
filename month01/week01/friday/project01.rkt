;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname project01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
 ; Функцийн нэр: rectangle-area
 ; Оролт: rectangle-area
 ; Гаралт: 60 * 10
 ; Томьёо: width * height
  ; Хүлээсэн үр дүн:600
(define (rectangle-area width height)
  (* width height))
(rectangle-area 60 10)
 ; Функцийн нэр: rectangle-primeter x
 ; Оролт: rectangle-primeter
 ; Гаралт: 100 * pi 
 ; Томьёо: pi * x
  ; Хүлээсэн үр дүн:#i314.1592
(define (rectangle-primeter x)
  (* pi x))
(rectangle-primeter 100)
 ; Функцийн нэр:square-area x 
 ; Оролт: square-area
 ; Гаралт: x * x
 ; Томьёо: x * x
  ; Хүлээсэн үр дүн:2601
(define (square-area x)
  (* x x))
(square-area 51)
 ; Функцийн нэр:minutes-to-seconds m 
 ; Оролт: minutes-to-seconds
 ; Гаралт: m * 22 
 ; Томьёо: m * 22
  ; Хүлээсэн үр дүн:1320
(define (minutes-to-seconds m)
  (* m 60))
(minutes-to-seconds 22)
 ; Функцийн нэр:hours-to-minutes m 
 ; Оролт: hours-to-minutes
 ; Гаралт: m * 50
 ; Томьёо: m * 60
  ; Хүлээсэн үр дүн:3000
(define (hours-to-minutes m)
  (* m 60))
(hours-to-minutes 50)
 ; Функцийн нэр:celsius-to-fahrenheit c 
 ; Оролт: elsius-to-fahrenheit
 ; Гаралт: (+ (* c 9/5) 32)) + 11
 ; Томьёо: (+ (* c 9/5) 32))
  ; Хүлээсэн үр дүн:51.8
(define (celsius-to-fahrenheit c)
  (+ (* c 9/5) 32))
  (celsius-to-fahrenheit 11)
 ; Функцийн нэр:kilometers-to-meters k)
 ; Оролт: kilometers-to-meters
 ; Гаралт: k * 50
 ; Томьёо: k * 1000
  ; Хүлээсэн үр дүн:50000
(define (kilometers-to-meters k)
  (* k 1000))
(kilometers-to-meters 50)
  
