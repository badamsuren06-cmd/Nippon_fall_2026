;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; minutes-to-seconds : Number -> Number
(define ( minutes-to-seconds m)
  (* m 60))
(check-expect (minutes-to-seconds 2) 120)
;; hours-to-seconds : Number -> Number
;; minutes-to-seconds-г дуудна (1 цаг = 60 минут)
(define (hours-to-seconds h)
  (minutes-to-seconds (* h 60)))
(check-expect (hours-to-seconds 1) 3600)
(check-expect (hours-to-seconds 2) 7200)
;; mib-to-bits : Number -> Number
;; 1 MiB = 1024 KiB. Даваагийн kib-to-bits-г дуудна.
(define (kib-to-bits kib)
  (* kib 1024 8))
(define (mib-to-bits mib)
  (kib-to-bits (* mib 1024)))
(check-expect (mib-to-bits 1) 8388608)