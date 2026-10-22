;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 2026-10-19
;; struct
;; Яаж би дараах зүйлсийг хадгалах вэ?
;; Name    age

;; Хангай 44
;; Шоовдор 26

;; List
;; cons a (cons b
(define khangai-age (cons "Khangai" (cons 44 empty)))
khangai-age

(define-struct book (title author pages))
;; A Book is (make-book String String Number)
;; title  : номын нэр
;; author : зохиолч
;; pages  : хуудасны тоо
(define b1 (make-book "Harry Potter" "Rowling" 320))
(define b2 (make-book "Бяцхан ханхүү" "Exupéry" 96))
(define b3 (make-book "Нууц товчоо" "Тодорхойгүй" 300))

;; Template
(book-title b2)
;; b3 хэдэн хуудастай
(book-pages b3)
;; b1-ийн зохиогч нь хэн бэ?
(book-author b1)

;;(book-pages "Hi") -- error алдаа

;; Асуулт: Ном 300-аас олон хуудастай бол #true буцаадаг function бич.
;; long-book? : Book -> Boolean
(define (long-book? book)
  (> (book-pages book) 300))
(check-expect (long-book? b1) #true)
(check-expect (long-book? b2) #false)
(check-expect (long-book? b3) #false)   ; яг 300
(check-expect (long-book? (make-book "A" "B" 301)) #true)

;; Дасгал 1C: reading-days
;; Асуулт: Өдөрт 20 хуудас уншвал ном хэдэн өдөрт дуусахыг тооцоол.
;; reading-days : Book -> Number
(define (reading-days day)
  (/ (book-pages day) 20))
(check-expect (reading-days b1) 16)
(check-expect (reading-days b2) 4.8)
(check-expect (reading-days b3) 15)

;; Exercise 02
(define-struct pet (name kind age))
;; A Pet is (make-pet String String Number)
;; name : нэр
;; kind : "нохой", "муур", ...
;; age  : нас (жилээр)
(define babo (make-pet "Бобо" "нохой" 3))
(define memi (make-pet "Мими" "муур" 1))
(define tam  (make-pet "Том"  "муур" 12))

;; Асуулт: Амьтан муур бол #true буцаа.
(check-expect (cat? mimi) #true)
(check-expect (cat? tom) #true)
(check-expect (cat? bobo) #false)

(define (senior? pet)
  (>= (pet-age pet) 10))
;; Хүлээгдэж буй үр дүн:

(check-expect (senior? tom) #true)
(check-expect (senior? bobo) #false)
(check-expect (senior? (make-pet "Хар" "нохой" 10)) #true)
(check-expect (senior? (make-pet "Цагаан" "муур" 9)) #false)
(define-struct product (name price qty))

;; A Product is (make-product String Number Number)
;; price : нэгжийн үнэ (₮)
;; qty   : агуулахад байгаа тоо

(define pen      (make-product "Үзг"      500  40))
(define notebook (make-product "Дэвтэр"    1500  0))
(define bag      (make-product "Цүнх"     45000  3))

;; Асуулт: Доорх function тус бүр нэг алдаатай. Run дарахаас өмнө алдааг олж, засаад тестүүдийг давуул.

;; stock-value : Product -> Number   ; үнэ × тоо
(define (stock-value p)
  (* (product-price p) (product-qty p)))

;; in-stock? : Product -> Boolean   ; тоо > 0
(define (in-stock? p)
  (> (product-qty p) 0))


;; price-with-tax : Product -> Number ; НӨАТ 10% нэмсэн үнэ
(define (price-with-tax p)
  (* (product-price p) 1.1))

;; Жишээ: tom: 12 >= 10 -> #true.

;; Дасгал 2D: pet-intro
;; Асуулт: Амьтныг нэг өгүүлбэрээр танилцуулдаг function бич.

;; pet-intro : Pet -> String

;; Хүлээгдэж буй үр дүн:
(check-expect (pet-intro bobo) "Бобо бол 3 настай нохой")
(check-expect (pet-intro mimi) "Мими бол 1 настай муур")
(check-expect (pet-intro tom) "Том бол 12 настай муур")

;; Жишээ: (string-append "Сайн" " " "үү") -> "Сайн үү", (number->string 3) -> "3".

(check-expect (stock-value pen) 20000)
(check-expect (stock-value bag) 135000)
(check-expect (stock-value notebook) 0)

(check-expect (in-stock? pen) #true)
(check-expect (in-stock? bag) #true)
(check-expect (in-stock? notebook) #false)

(check-expect (price-with-tax pen) 550)
(check-expect (price-with-tax notebook) 1650)
(check-expect (price-with-tax bag) 49500)

;; Exercise - 04
;; ball (зураг)
(require 2htdp/image)

(define-struct ball (radius color))
;; A Ball is (make-ball Number String)
;; radius : радиус (px)
;; color  : өнгө, ж: "red"

(define red-ball (make-ball 20 "red"))
(define big-blue (make-ball 50 "blue"))
(define tiny     (make-ball 5 "green"))  
;; Хүлээгдэж буй үр дүн:
(define (draw-ball b)
  (circle (ball-radius b) "solid" (ball-color b)))
(check-expect (draw-ball red-ball) (circle 20 "solid" "red"))
(check-expect (draw-ball big-blue) (circle 50 "solid" "blue"))

;; Жишээ: (circle 30 "solid" "orange") нь 30 радиустай улбар шар дугуй зурна.
;; Дасгал 4B: bigger?
;; Асуулт: Хоёр бөмбөг авна. Эхний бөмбөг хоёр дахиасаа том бол #true буцаа.

;; bigger? : Ball Ball -> Boolean
;; Хүлээгдэж буй үр дүн:
(define (bigger? ball1 ball2)
  (> (ball-radius ball1) (ball-radius ball2)))

(check-expect (bigger? big-blue red-ball) #true)
(check-expect (bigger? red-ball tiny) #true)
(check-expect (bigger? tiny red-ball) #false)
(check-expect (bigger? red-ball red-ball) #false)


;; Жишээ: 50 ба 20 -> (> 50 20) -> #true.
;; Дасгал 4C: ball-in-box

;; Асуулт: Бөмбөгийг хар хүрээтэй дөрвөлжин дотор зур. Дөрвөлжингийн тал = 2 × радиус + 10.

;; ball-in-box : Ball -> Image

;; Хүлээгдэж буй үр дүн:
(define (ball-in-box ball)
  (overlay (draw-ball ball) (square (+ (*  (ball-radius ball) 2) 10) "outline" "black")))

(check-expect (ball-in-box red-ball)
              (overlay (circle 20 "solid" "red") (square 50 "outline" "black")))
(check-expect (ball-in-box tiny)
              (overlay (circle 5 "solid" "green") (square 20 "outline" "black")))
(check-expect (ball-in-box big-blue)
              (overlay (circle 50 "solid" "blue") (square 110 "outline" "black")))

;; Жишээ: red-ball: 2 × 20 + 10 = 50.

;; Жишээ: red-ball: 2 × 20 + 10 = 50.

;; Жишээ 5: game (struct-ээ өөрөө зохио)
;; Хөлбөмбөгийн тоглолт бүрт гэрийн баг, зочин баг, гэрийн багийн гоол, зочин багийн гоол гэсэн 4 мэдээлэл бий.

;; Дасгал 5A: struct, data definition, жишээ, template
;; Асуулт: Struct, data definition, 3 жишээ (хожсон / хожигдсон / тэнцсэн), template бич.
;; Талбаруудын нэр яг home, away, home-goals, away-goals байх ёстой.
(define-struct game (home away home-goals away-goals))
(define g1 (make-game "Монгол" "Япон"     2 1))  ; гэрийн баг хожсон
(define g2 (make-game "Хятад"  "Солонгос" 0 3))  ; зочин баг хожсон
(define g3 (make-game "Монгол" "Хятад"    1 1))  ; тэнцсэн

;; Хүлээгдэж буй үр дүн:
(check-expect (game? g1) #true)
(check-expect (game-home g1) "Монгол")
(check-expect (game-away g2) "Солонгос")
(check-expect (game-away-goals g2) 3)

;; Жишээ: book-ийн data definition-ийг загвар болгон ашигла.
;; Дасгал 5B: total-goals

;; Асуулт: Тоглолтын нийт гоолыг тоол.
;; total-goals : Game -> Number

;; Хүлээгдэж буй үр дүн:(define (total-goals g)
(define (total-goals game)
  (+ (game-home-goals game)
     (game-away-goals game)))
(check-expect (total-goals g1) 3)
(check-expect (total-goals g2) 3)
(check-expect (total-goals g3) 2)
(check-expect (total-goals (make-game "A" "B" 0 0)) 0)

;; Жишээ: g1: 2 + 1 = 3.
;; Дасгал 5C: winner
;; Асуулт: Хожсон багийн нэрийг буцаа. Тэнцсэн бол "Тэнцээ" гэж буцаа.
;; winner : Game -> String
;; Хүлээгдэж буй үр дүн:
(define (winner game)
  (cond
    [(> (game-home-goals game) (game-away-goals game)) (game-home game)]
    [(< (game-home-goals game) (game-away-goals game)) (game-away game)]
    [else "Тэнцээ"]))
(check-expect (winner g1) "Монгол")
(check-expect (winner g2) "Солонгос")
(check-expect (winner g3) "Тэнцээ")
(check-expect (winner (make-game "A" "B" 0 0)) "Тэнцээ")

;; Жишээ: g2: 0 < 3 тул зочин баг "Солонгос" хожсон.
;; Дасгал 5D: score-line

;; Асуулт: Тоглолтын дүнг нэг мөр болгож бич.

;; score-line : Game -> String

;; Хүлээгдэж буй үр дүн:
(define (score-line game)
  (string-append (game-home game)
                 " "
                 (number->string (game-home-goals game))
                 " : "
                 (number->string (game-away-goals game))
                 " "
                 (game-away game)))

(check-expect (score-line g1) "Монгол 2 : 1 Япон")
(check-expect (score-line g2) "Хятад 0 : 3 Солонгос")
(check-expect (score-line g3) "Монгол 1 : 1 Хятад")

;; Жишээ: Хэлбэр нь: баг + " " + гоол + " : " + гоол + " " + баг.


;; Exercise-06

(define-struct student (name quiz project))
;; A Student is (make-student String Number Number)
;; name    : сурагчийн нэр
;; quiz    : quiz оноо, 0-100
;; project : project оноо, 0-100
(define (final-score student)
  (+ (* (student-quiz student) 0.4)
     (* (student-project student) 0.6)))

(define aki  (make-student "Aki"  80 90))
(define sora (make-student "Sora" 60 60))
(define mina (make-student "Mina" 95 91))
(define ren  (make-student "Ren"  45 55))


;; Дасгал 1: final-score, жинлэсэн эцсийн оноо (15 мин)
;; Асуулт: Эцсийн оноог тооцоол. Quiz нь 40%, project нь 60% жинтэй.
;; final-score : Student -> Number
;; quiz × 0.4 + project × 0.6

;; Хүлээгдэж буй үр дүн:
(check-expect (final-score aki)  86)
(check-expect (final-score sora) 60)
(check-expect (final-score mina) 92.6)
(check-expect (final-score ren)  51)
(check-expect (final-score (make-student "Zero" 0 0)) 0)

;; Жишээ: aki: 80 × 0.4 = 32, 90 × 0.6 = 54, 32 + 54 = 86.

;; Дасгал 2: passed?, тэнцсэн эсэх (10 мин)

;; Асуулт: Эцсийн оноо 60 ба түүнээс дээш бол #true буцаа. 1-р дасгалын final-score-ийг ашигла.
;; passed? : Student -> Boolean
;; Хүлээгдэж буй үр дүн:
(define (passed? student)
  (>= (final-score student) 60))
(check-expect (passed? aki)  #true)
(check-expect (passed? sora) #true)  ; яг 60
(check-expect (passed? mina) #true)
(check-expect (passed? ren)  #false)
(check-expect (passed? (make-student "Uka" 100 34)) #true)  ; 40 + 20.4 = 60.4? → шалга!

;; Анхаар: сүүлийн тестийг өөрөө тооцоолоод шалга. 100 × 0.4 = 40, 34 × 0.6 = 20.4, нийт 60.4, тэгэхээр хариу нь #true байх ё[cite: 8]

;; Засварласан тест:

(check-expect (passed? (make-student "Uka" 100 34)) #true)  ; 60.4
(check-expect (passed? (make-student "Bat" 100 33)) #false)  ; 40 + 19.8 = 59.8

;; Жишээ: ren: 51 < 60 → #false.