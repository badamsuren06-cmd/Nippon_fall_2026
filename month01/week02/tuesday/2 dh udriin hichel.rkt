;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2 dh udriin hichel|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Boolean operation

;;and, or, not
(and (> 10 5) (< 3 1))
(or (= 4 4) (> 2 9))
(not (even? 7))
(and (>= 75 60) (>= 90 80))
;;Exercises01
(check-expect (and #t #t) #t)
(check-expect (and #t #f) #f)
(check-expect (or #t #t) #t)
(check-expect (or #t #f) #t)
(check-expect (not #t) #f)
(check-expect (not  #f) #t)
(and (> 8 3) (even? 10)) 
(or (< 1 0) (= 6 (+ 3 3))) 
(not (positive? -2))
(and (>= 60 60) (>= 79 80))
;;Exercises02
;; in-range? : Number -> Boolean
;; n нь 1-ээс 10 хүртэл (хоёр талдаа орно) бол #t
(define (in-range? n)
  (and (>= n 1) (<= n 10)))
(check-expect (in-range? 5) #t)
(check-expect (in-range? 1) #t)    ; доод хил
(check-expect (in-range? 10) #t)   ; дээд хил
(check-expect (in-range? 0) #f)    ; доод хилийн гадна
(check-expect (in-range? 11) #f)
;;Exercises03
;; teen? : Number -> Boolean
;; age 13-аас 19 хүртэл (хоёр талдаа орно) бол #t
(define (teen? age)
  (and (>= age 13) (<= age 19)))
(check-expect (teen? 13) #t)
(check-expect (teen? 19) #t)
(check-expect (teen? 12) #f)
(check-expect (teen? 20) #f)
;; weekend? : Number -> Boolean
;; долоо хоногийн өдрийн дугаар (1 = Даваа ... 7 = Ням) 6 эсвэл 7 бол #t
(define (weekend? day)
  (or (= day 6) (= 7 day ))) 
(check-expect (weekend? 6) #t)
(check-expect (weekend? 7) #t)
(check-expect (weekend? 5) #f)
;; scholarship? : Number Number -> Boolean
;; score 90 ба түүнээс дээш, attendance 80 ба түүнээс дээш бол #t
(define (scholarship? score attendance)
  (and (>= score 90) (>= attendance 80)))
(check-expect (scholarship? 90 80) #t)
(check-expect (scholarship? 89 100) #f)
(check-expect (scholarship? 100 79) #f)
;; not-passing? : Number -> Boolean
;; Даваагийн passing-score?-г not-оор урвуулна
(define (not-passing? score)
  (not (>= score 60)))
(check-expect (not-passing? 59) #t)
(check-expect (not-passing? 60) #f)

;; IF
;; adult-or-minor : Number -> String
;; age 18 ба түүнээс дээш бол "adult", үгүй бол "minor"
(define (adult-or-minor age)
  (if (>= age 18)
      "adult"
      "minor"))

(check-expect (adult-or-minor 30) "adult")
(check-expect (adult-or-minor 18) "adult")   ; хил
(check-expect (adult-or-minor 17) "minor")   ; хилийн доор
;;Exercises IF
;;Ex01
;; even-or-odd : Number -> Strig
(define (even-or-odd number)
  (if (even? number)
      "even"
      "odd"))
(check-expect (even-or-odd 4) "even")
(check-expect (even-or-odd 7) "odd")
(check-expect (even-or-odd 0) "even")
;; pass-or-fail : Number -> String
;; score 60 ба түүнээс дээш бол "pass", үгүй бол "fail"
(define (pass-or-fail score)
  (if (>= score 60)
      "pass"
      "fail"))
(check-expect (pass-or-fail 60) "pass")
(check-expect (pass-or-fail 59) "fail")
;; shipping-fee : Number -> Number
;; захиалгын дүн 50000 ба түүнээс их бол хүргэлт 0, үгүй бол 3000
(define (shipping-fee number)
  (if (>= number 50000) 0 3000))
(check-expect (shipping-fee 50000) 0)
(check-expect (shipping-fee 49999) 3000)
;; larger : Number Number -> Number
;; хоёр тооны их нь
(define (larger a b)
  (if (>= a b)
      a
      b))
(check-expect (larger 3 8) 8)
(check-expect (larger 8 3) 8)
(check-expect (larger 5 5) 5)
;; absolute-value : Number -> Number
;; сөрөг бол эсрэг тэмдэгтэй болгоно, үгүй бол хэвээр
(define (absolute-value number)
  (if (< number 0)
      (- number)
      number))
(check-expect (absolute-value -4) 4)
(check-expect (absolute-value 4) 4)
(check-expect (absolute-value 0) 0)

;; COND
;; grade : Number -> String
;; 0–100 оноог үсгэн дүн болгоно
(define (grade score)
  (cond
    [(>= score 90) "A"]
    [(>= score 80) "B"]
    [(>= score 70) "C"]
    [(>= score 60) "D"]
    [else "F"]))

(check-expect (grade 90) "A")   ; хил
(check-expect (grade 89) "B")   ; хилийн доор
;; temperature-label : Number -> String
;; 0-ээс бага "freezing", 0–14 "cold", 15–24 "warm", 25 ба түүнээс дээш "hot"
(define (temperature-label temprature)
  (cond
    [(<= temprature -1) "freezing"]
    [(and (>= temprature 0) (<= temprature 14))  "cold"]
    [(and (>= temprature 15) (<= temprature 24))  "warm"]
    [(>= temprature 25) "hot"]))
  
(check-expect (temperature-label -1) "freezing")
(check-expect (temperature-label 0) "cold")
(check-expect (temperature-label 14) "cold")
(check-expect (temperature-label 15) "warm")
(check-expect (temperature-label 24) "warm")
(check-expect (temperature-label 25) "hot")
;; ticket-price : Number -> Number
;; age 13-аас бага 5000, 13–59 10000, 60 ба түүнээс дээш 6000
(define (ticket-price age)
  (cond
    [(<= age 12) 5000]
    [(and (>= age 13) (<= age 59)) 10000]
    [(>= age 60) 6000]))
(check-expect (ticket-price 12) 5000)
(check-expect (ticket-price 13) 10000)
(check-expect (ticket-price 59) 10000)
(check-expect (ticket-price 60) 6000)
;; number-sign : Number -> String
;; "positive", "zero", "negative"
(define (number-sign number)
  (cond
   [(= number 5) "positive"]
   [(= number 0) "zero"]
   [(= number -5) "negative"]))
(check-expect (number-sign 5) "positive")
(check-expect (number-sign 0) "zero")
(check-expect (number-sign -5) "negative")
;; file-size-label : Number -> String
;; MiB хэмжээ: 10-аас бага "small", 10–99 "medium", 100 ба түүнээс их "large"
(define (file-size-label size)
  (cond
   [(= size 9) "small"]
   [(and (>= size 10) (<= size 99)) "medium"]
   [(>= size 100) "large"]))
(check-expect (file-size-label 9) "small")
(check-expect (file-size-label 10) "medium")
(check-expect (file-size-label 99) "medium")
(check-expect (file-size-label 100) "large")