;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Дасгал 4A|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; student нь (make-student String Number Number) бүтэцтэй:
;; - name: сурагчийн нэр
;; - exam: шалгалтын оноо (0-100)
;; - project: төслийн оноо (0-100)
(define-struct student (name exam project))

(define aki (make-student "Aki" 70 90))
(define sora (make-student "Sora" 85 80))
(define mina (make-student "Mina" 75 70))
(define ren (make-student "Ren" 35 55))

(define students (list ren aki sora mina))


;; 2. passing-students : List-of-students -> List-of-students


(define (passing? score)
  (>= score 60))

(define (passing-students score)
  (cond [(empty? score) empty]
        [else (if (passing? (student-exam (first score)))
                  (cons (first score) (passing-students (rest score)))
                  (passing-students (rest score)))]))

(check-expect (passing-students empty) empty)
(check-expect (passing-students students) (list aki sora mina))
(check-expect (passing-students (list ren aki)) (list aki))


;; 3. grades : List-of-students -> List-of-strings


(define (student-grade s)
  (cond [(>= (student-exam s) 90) "A"]
        [(>= (student-exam s) 80) "B"]
        [(>= (student-exam s) 70) "C"]
        [(>= (student-exam s) 60) "D"]
        [else "F"])) 

(define (names score)
  (cond [(empty? score) empty]
        [else (cons (student-name (first score))
                    (names (rest score)))]))

(define (grades score)
  (cond [(empty? score) empty]
        [else (cons (student-grade (first score))
                    (grades (rest score)))]))


;; 4. bonus-all : List-of-students Number -> List-of-students
;; Зөвхөн project оноон дээр bonus нэмнэ

(define (add-bonus s bonus)
  (make-student (student-name s)
                (student-exam s)
                (+ (student-project s) bonus)))

(define (bonus-all los bonus)
  (cond
    [(empty? los) empty]
    [else (cons (add-bonus (first los) bonus)
                (bonus-all (rest los) bonus))]))

(check-expect (bonus-all empty 10) empty)
(check-expect (bonus-all (list aki ren) 10)
              (list (make-student "Aki" 70 100) (make-student "Ren" 35 65)))

;; -----------------------------------------------------------------
;; Дасгал 5A 
;; -----------------------------------------------------------------

(define (plain-average s)
  (/ (+ (student-exam s) (student-project s)) 2))

(define (final-score s)
  (plain-average s))

(define (better-student student1 student2)
  (if (>= (final-score student1) (final-score student2))
      student1
      student2))

;; best-student : NEList-of-students -> Student
(define (best-student nelos)
  (cond
    [(empty? (rest nelos)) (first nelos)]
    [else (better-student (first nelos)
                          (best-student (rest nelos)))]))

(check-expect (best-student (list sora)) sora)
(check-expect (best-student students) sora)

(define (total-final los)
  (cond
    [(empty? los) empty] 
    [else (+ (final-score (first los))
             (total-final (rest los)))]))

;; Зөвхөн тооны нийлбэр олох total-final
(define (sum-final los)
  (cond
    [(empty? los) 0]
    [else (+ (final-score (first los))
             (sum-final (rest los)))]))

(define (cout-students los)
  (cond
    [(empty? los) 0]
    [else (+ 1 (cout-students (rest los)))]))

;; average-final : NEList-of-students -> Number
(define (average-final score)
  (/ (sum-final score) (cout-students score)))

(check-expect (average-final (list aki)) 80)
(check-expect (average-final students) 70)

;; top-name : NEList-of-students -> String
;; Хөгжүүлсэн функц: Хамгийн шилдэг сурагчийн нэрийг буцаана
(define (top-name nelos)
  (student-name (best-student nelos)))

(check-expect (top-name students) "Sora")

