;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 5.1.5.|) (read-case-sensitive #t) (teachpacks ((lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;;#lang racket


(define (check-color target-1 target-2 guess-1 guess-2)
   (cond
     [ (and (symbol=? target-1 guess-1) (symbol=? target-2 guess-2)) 'Perfect ]
     [ (or (symbol=? target-1 guess-1) (symbol=? target-2 guess-2)) 'OneColorAtCorrectPosition ]
     [ (or (or (symbol=? target-1 guess-1) (symbol=? target-2 guess-2)) (or (symbol=? target-1 guess-2) (symbol=? target-2 guess-1)) ) 'OneColorOccurs ]
     [ else 'NothingCorrect ]
   )
)


;;(check-color 'red 'green 'red 'green)

;;(master check-color)