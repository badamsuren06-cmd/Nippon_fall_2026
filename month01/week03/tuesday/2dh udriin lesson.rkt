;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2dh udriin lesson|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;100 elements prices?
;; resursive function

;; fun-for-lon : List-of-numbers -> ???
(define (fun-for-lon l)
  (cond
    [(empty? l) ...]
    [else (... (first l)
               ... (fun-for-lon (rest l)) ...)]))

;; sum : List-of-numbers -> Number
;; бүх тооны нийлбэр
(define (sum l)
  (cond
    [(empty? l) 0]
    [else (+ (first l)
             (sum (rest l)))]))
(check-expect (sum empty) 0)
(check-expect (sum (cons 1 (cons 2 (cons 3 empty)))) 6)

;; multiply: list-of numbers-> numbers
(define (multiply numbers)
  (cond
    [(empty? numbers) 1]
    [else (* (first numbers)
             (multiply (rest numbers)))]))
(check-expect (multiply empty) 1)
(check-expect (multiply (cons 1 (cons 2 (cons 3 empty)))) 6)
(check-expect (multiply (cons 1 (cons 2 (cons 3 (cons 4 empty))))) 24)

(define (count-words words)
  (cond
    [(empty? words) 0]
    [else (+ 1
           (count-words (rest words)))]))
       
(check-expect (count-words empty) 0)
(check-expect (count-words (cons "hello" empty)) 1)
(check-expect (count-words (cons "hello" (cons "world" empty))) 2)
(check-expect (count-words (cons "I" (cons "love" (cons "Racket" empty)))) 3)
(check-expect (contains-word? "cat" empty) #false)
(define (contains-word? word words)
  (cond
    [(empty? words) #f]
    [(string=? word (first words)) #t]
    [else (contains-word? word (rest words))]))
(check-expect
 (contains-word? "dog" (cons "cat" (cons "dog" empty)))
 #true)
(check-expect
 (contains-word? "bird" (cons "cat" (cons "dog" empty)))
 #false)

(check-expect (contains-word? "cat" empty) #false)
(check-expect
 (contains-word? "cat" (cons "cat" empty))
 #true)
(check-expect
 (contains-word? "dog" (cons "cat" (cons "dog" empty)))
 #true)
(check-expect
 (contains-word? "bird" (cons "cat" (cons "dog" empty)))
 #false)
;;Ex03
;;count-long-words : list-of-strings-> number
;;(string-length "hi") ;;фукц ашиглан бодон
;;5 буюу түүний олон тэмдэгттнэй үсгийн тоог олно
(define (count-long-words words)
  (cond
    [(empty? words) 0]
    [(>=(string-length (first words)) 5)
     (+ 1 (count-long-words (rest words)))]
    [else
     (count-long-words (rest words))]))

(check-expect (count-long-words empty) 0)
(check-expect (count-long-words (cons "cat" empty)) 0)
(check-expect (count-long-words (cons "apple" empty)) 1)
(check-expect
 (count-long-words
  (cons "apple" (cons "hi" (cons "banana" empty))))
 2)
(check-expect
 (count-long-words
  (cons "hello" (cons "world" (cons "Racket" empty))))
 3)

;;Ex04
;;count-completed : List-of-Boolean->number
;;Дууссан даалгаврын тоог олно
(define (count-completed Boolean)
  (cond
    [(empty? Boolean) 0]
    [(first Boolean) (+ 1 (count-completed (rest Boolean)))]
    [else (count-completed (rest Boolean))]))
(check-expect (count-completed empty) 0)
(check-expect (count-completed (cons #true empty)) 1)
(check-expect (count-completed (cons #false empty)) 0)
(check-expect
 (count-completed (cons #true (cons #false empty)))
 1)
(check-expect
 (count-completed
  (cons #true (cons #true (cons #false (cons #true empty)))))
 3)
(check-expect
 (count-completed
  (cons #false (cons #false (cons #false empty))))
 0)

;;Ex05
;;join-words : List-of-strings->string
;;(check-expect (string-append "Hello") "helloWorld") гэдэг функц ашиглан
(define (join-words word)
  (cond
    [(empty? word) ""]
    [(empty? (rest word)) (first word)]
    [else (string-append (first word) " " (join-words (rest word)))]))
    
(check-expect (join-words empty) "")
(check-expect (join-words (cons "Hello" empty)) "Hello")
(check-expect
 (join-words (cons "Hello" (cons "world" empty)))
 "Hello world")
(check-expect
 (join-words (cons "I" (cons "love" (cons "Racket" empty))))
 "I love Racket")