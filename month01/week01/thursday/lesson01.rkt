;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

"hello world"
;arithmetic operation -> expression -> result

true
(+ 3 4)

(- 10 6)

(* 5 8)

(/ 20 4)

(+ 100 50)

(- 30 12)

(* 7 6)

;many numbers

(/ 81 9)
(+ 10 20 30)

;nested expression

(+ (* 2 3) 4)

; (* 2 3 -> syntax error

;(* 4)
; (sign operator operad)
(+ 2 3)

;define додорхойлох

(define age 19)

age ; хувьсагч сariable

; Examples : өөрийнхөө нэр болоод мэрэгжлийг тодорхоол

(define name "Badamsuren")
name ;call/usege

(define job "economist")


(define width 4)

(define height 5)

(+ width height)

(* width height)


(define price 100)
(define quantity 3)
(* price quantity)
(define salary 1500)
(define bonus 300)
(+ salary bonus)

;
(* height height)
(* width width)

;functions
;square гэдэг функц todorhoiloh
;;x iig punkstiin parametr
;;INPUT - x
;; FUNCTION PORcess -> (* x x)
(define (square x)
  (* x x))

;;output

(square 5)
(square 12)


 ;; double гэдэг нэртэй 1 парамеэр аваад түүний утгыг double-даг функц бичнэ
 ;;түүнийгээ 4, 8, -35 гэдэг аргументуудаар теётэлж үр дүнг нь шалгарай

;; Expected outpu : 4 ->8

 ;; triple гэдэг нэриэй 1 параметр аваад түүний утгыг 3 дахин өсгөдөг функц
 ;;






 ;; Multiple parameters
 ;; two parametered functio
(define (calculater-area-rectangle width height)
   (* width height))


(define (calculater-perimiter-rectangle a b)
  (* 2(+ a b)))
(calculater-perimiter-rectangle 10 5)

(define (calculeter-circle-area radius)
  (* 3.14 radius radius))

(calculeter-circle-area 10)

