;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Шалгалтын цаг 9-өөс 12 хүртэл (хоёр талдаа орно).
;; exam-time? : Number -> Boolean
(define (exam-time? time)
  (and (>= time 9) (<= time 12)))
(check-expect (exam-time? 9) #t)
(check-expect (exam-time? 12) #t)
(check-expect (exam-time? 8) #f)
(check-expect (exam-time? 13) #f)
;;Predicate биш, тоо буцаах тул if хэрэгтэй.
;; bonus-points : Number -> Number
;; оноо 90 ба түүнээс дээш бол 5 нэмэлт оноо, үгүй бол 0
(define (bonus-points score)
  (if (>= score 90)
      5
      0))
(check-expect (bonus-points 90) 5)
(check-expect (bonus-points 89) 0)
;;cond, гурван хэсэг
;;Усны төлөвийг температураар.
;; water-state : Number -> String
;; 0-ээс бага "ice", 0–99 "water", 100 ба түүнээс дээш "steam"
(define (water-state temperature)
  (cond
    [(<= temperature -1) "ice"]
    [(and (>= temperature 0) (<= temperature 99)) "water"]
    [(>= temperature 100) "steam"]))
(check-expect (water-state -1) "ice")
(check-expect (water-state 0) "water")
(check-expect (water-state 99) "water")
(check-expect (water-state 100) "steam")

