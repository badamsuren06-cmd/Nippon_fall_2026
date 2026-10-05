;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Өгөгдөл: 4-ийг 5-аар үржүүлээд 3 нэм Өөрийн бичсэн илэрхийлэл бүрийг
;;Өөрийн бичсэн илэрхийлэл бүрийг check-expect-ийн эхний оролтод,
;;хүлээсэн тоог хоёр дахь оролтод тавьж шалга.
(+ (* 4 5) 3)
(check-expect (+ (* 4 5) 3)23)
;;8 ба 4-ийн нийлбэрийг 3-т хуваа Өөрийн бичсэн илэрхийлэл бүрийг
;;Өөрийн бичсэн илэрхийлэл бүрийг check-expect-ийн эхний оролтод,
;;хүлээсэн тоог хоёр дахь оролтод тавьж шалга.
(/ (+ 8 4) 3)
(check-expect (/ (+ 8 4) 3)4)
;;rectangle-area функцийг define-аар өөрөө бич.
;;Оролт: сөрөг биш width, height тоонууд.
;;Гаралт: өргөн × өндөр буюу тэгш өнцөгтийн талбай
(define (rectangle-area width height)
  (* width height))
(rectangle-area 49 37)
(check-expect (* 49 37) 1813)
(check-expect (* 0 37) 0)
;;rectangle-cost функцийг өөрөө бич.
;;Оролт: сөрөг биш width, height, нэгж талбайн үнэ unit-price.
;;Гаралт: талбай × нэгж үнэ буюу нийт үнэ.
;;Талбайг дахин бодохын оронд 2-р дасгалын rectangle-area-г дууд.
(define (rectangle-cost unit-price width height)
  (* unit-price width height ))
(rectangle-cost 6 8 200)
(check-expect (rectangle-cost 6 8 200)9600)
;;эхлэд dedine командар rectangle-cost гэж дуудхад unit-price width height гэсэн
;; 3нь өгөгдөл дуудагдхаар зааж өгөн. дараан дооталын
;;хүснэгтэнд unit-price width height хоорондоо үржигдхээр зааж өгөн

