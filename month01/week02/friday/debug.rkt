;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname debug) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; debug.rkt-ийн эхэнд 2-р хэсгийн жишээ шийдлийг хуул.

;; 1. Хувь урвуу бодогдож байна
;; copleted dolon total bairshil soligdson baisan aldaag zasaw
(define (assignment-percent-1 completed total)
  (* (/ completed total) 100))
(check-expect (assignment-percent-1 8 10) 80)

;; 2. Дундажийн оронд нийлбэр шалгаж байна
;; aldaa zasalt sum3
(define (sum3 a b c)
  (+ a b c))
(define (passing-average-2? s1 s2 s3)
  (>= (sum3 s1 s2 s3) 60))
(check-expect (passing-average-2? 20 20 20) #t)

;; 3. Нэг шалгуур мартагдсан
;; passing-average? aldaag zasaw bas good-attendance zasaw
(define (passing-average? s1 s2 s3)
  (>= (sum3 s1 s2 s3) 60))
(define (assignment-percent completed total)
  (* (/ completed total) 100))
(define (good-attendance? attendance)
  (>= attendance 80))
  
(define (eligible-3? s1 s2 s3 attendance completed total)
  (and (passing-average? s1 s2 s3)
       (good-attendance? attendance)
       (assignments-complete? completed total)))

(check-expect (eligible-3? 80 90 70 85 6 10) #f)

;; 4. Хоёр string-ийн байр солигдсон
;; eligible?: this function is not defined zasaw bas "Not eligible" eligible bair soligdson bn 
     
(define (eligible? s1 s2 s3 attendance completed total)
  (and (passing-average? s1 s2 s3)
       (good-attendance? attendance)))

(define (final-status-4 s1 s2 s3 attendance completed total)
  (if (eligible? s1 s2 s3 attendance completed total)
      "Eligible"
      "Not Eligible"))
(check-expect (final-status-4 80 90 70 85 8 10) "Eligible")

;; 5. Оролтын тоо таарахгүй
(define (final-status-5 s1 s2 s3 attendance completed total)
  (if (eligible? s1 s2 s3 attendance completed total)
      "Eligible"
      "Not eligible"))
(check-expect (final-status-5 80 90 70 85 8 10) "Eligible")

;; 6. Шалтгааны дараалал буруу
;; assignments-complete?: this function is not defined aldaag zasaw
(define (assignments-complete? completed total)
  (>= (assignment-percent completed total) 70))
(define (ineligibility-reason-6 s1 s2 s3 attendance completed total)
  (cond
    [(not (good-attendance? attendance)) "Low attendance"]
    [(not (passing-average? s1 s2 s3)) "Low score"]
    [(not (assignments-complete? completed total)) "Missing assignments"]
    [else "Eligible"]))
(check-expect (ineligibility-reason-6 59 59 59 50 0 10) "Low attendance")

;; pass-fail-badge : Number -> Image
;; оноо 60 ба түүнээс дээш бол ногоон тойрог, үгүй бол улаан (радиус 20)
(require 2htdp/image)
(define (pass-fail-badge score)
  (if (>= score 60)
      (circle 20 "solid" "green")
      (circle 20 "solid" "red")))

(check-expect (pass-fail-badge 60) (circle 20 "solid" "green"))
(check-expect (pass-fail-badge 59) (circle 20 "solid" "red"))

;; score-bar : Number -> Image
;; оноо → өргөн нь оноотой тэнцүү, өндөр 20 цэнхэр тэгш өнцөгт
(define (score-bar score)
  (rectangle score 20 "solid" "blue"))
(check-expect (score-bar 80) (rectangle 80 20 "solid" "blue"))
(check-expect (score-bar 0) (rectangle 0 20 "solid" "blue"))

;; three-bars : Number Number Number -> Image
;; Гурван оноог дээрээс доош дараалсан баганан диаграм болгоно.
(define (three-bars s1 s2 s3)
  (above (score-bar s1)
         (score-bar s2)
         (score-bar s3)))

(check-expect (three-bars 80 60 90)
              (above (score-bar 80) (score-bar 60) (score-bar 90)))