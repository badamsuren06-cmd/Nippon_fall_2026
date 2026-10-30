;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (senior? pet)
  (>= (pet-age pet) 10))
;; Хүлээгдэж буй үр дүн:

(check-expect (senior? tom) #true)
(check-expect (senior? bobo) #false)
(check-expect (senior? (make-pet "Хар" "нохой" 10)) #true)
(check-expect (senior? (make-pet "Цагаан" "муур" 9)) #false)

;; Жишээ: tom: 12 >= 10 -> #true.

;; Дасгал 2D: pet-intro
;; Асуулт: Амьтныг нэг өгүүлбэрээр танилцуулдаг function бич.
(define (pet-intro pet)
  (string-append (pet-name pet)
                 "бол"
                 (number->string (pet-age pet))
                 "настай"
                 (pet-species pet)))
                 
;; pet-intro : Pet -> String

;; Хүлээгдэж буй үр дүн:
(check-expect (pet-intro bobo) "Бобо бол 3 настай нохой")
(check-expect (pet-intro mimi) "Мими бол 1 настай муур")
(check-expect (pet-intro tom) "Том бол 12 настай муур")

;; Жишээ: (string-append "Сайн" " " "үү") -> "Сайн үү", (number->string 3) -> "3".