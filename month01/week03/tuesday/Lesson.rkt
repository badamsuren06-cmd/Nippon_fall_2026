;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Lesson) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Ex04
;; List яг хоёр элементтэй эсэх
;; exactly-two? : List-of-numbers -> Boolean
;; List яг хоёр элементтэй бол #true буцаана.
;; Tip: cons ашиглах
;; Гурван нөхцөлийг шалгана.
;; 1. List хоосон биш.
;; 2. Эхний элементийн дараа бас нэг элемент байна.
;; 3. Хоёр дахь элементийн дараа list хоосон байна.
(define (exactly-two? numbers)
  (cons? numbers)
  (cons? (rest? numbers))
  (empty? (rest? (rest numbers))))
(check-expect (exactly-two? empty) #false) 

(check-expect
(exactly-two? (cons 5 empty)) #false)

(check-expect
(exactly-two? (cons 5 (cons 10 empty))) #true)

(check-expect
(exactly-two? (cons 5 (cons 10 (cons 15 empty)))) #false)

;;Ex05
;; first
(define (first-three-total price)
  (+ (first price)
     (first (rest price))
     (first (rest (rest price)))))
(define prices
  (cons 2500
        (cons 4000
              (cons 1500 eempty))))

(check-expect (first-three-total prices) 8000)
(check-expect
(first-three-total (cons 100 (cons 200 (cons 300 empty)))) 600)

;;100 elements prices?
;; resursive function



  

    