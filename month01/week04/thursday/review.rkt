;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 1-р хэсэг: honor? (student1 бүтэц)
(define-struct student1 (name midterm final))
(define mina (make-student1 "mina" 85 95))
(define aki1 (make-student1 "aki" 70 85))

(define (honor? score)
  (>= (student1-final score) 90))

(check-expect (honor? mina) #true)
(check-expect (honor? aki1) #false)
(check-expect (honor? (make-student1 "Nine" 90 90)) #true)


;; 2-р хэсэг: swap-scores (student2 бүтэц)
(define-struct student2 (name quiz project))
(define boba (make-student2 "boba" 85 95))
(define sora (make-student2 "sora" 70 85))

;; swap-scores : Student2 -> Student2
;; quiz ба project оноог хооронд нь солих
(define (swap-scores score)
  (make-student2 (student2-name score)
                (student2-project score)  ; 
                (student2-quiz score)))   
  
;; Шалгалтууд
(check-expect (swap-scores (make-student2 "bold" 80 90)) (make-student2 "bold" 90 80))
(check-expect (swap-scores sora) (make-student2 "sora" 85 70))

;; pass-label : Student -> Image
;; тэнцсэн бол ногоон "PASS", үгүй бол улаан "FAIL" (16)
(require 2htdp/image)

;; Сурагчдын оноог зарлах
(define aki 85)
(define ren 45)

;; pass-label : Number -> Image
;; Оноо 60 ба түүнээс дээш бол ногоон "PASS", үгүй бол улаан "FAIL" зураг буцаана
(define (pass-label score)
  (cond
    [(>= score 60) (text "PASS" 16 "green")]
    [else (text "FAIL" 16 "red")]))

;; Шалгалтууд (Функцийн гадна бичигдэнэ)
(check-expect (pass-label aki) (text "PASS" 16 "green"))
(check-expect (pass-label ren) (text "FAIL" 16 "red"))