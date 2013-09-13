;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 6.3.3|) (read-case-sensitive #t) (teachpacks ((lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "master.rkt" "teachpack" "htdp")))))


;; Ex 6.3.1.
;; Structure Declaration Exercise


(define-struct movie (title producer))

(define-struct boyfriend (name hair eyes phone))

(define-struct cheerleader (name number))

(define-struct CD (artist title price))

(define-struct sweater (material size producer))


;;--------------------------------------------------------


;; Ex 6.3.3.
;; Fighter Planes

(define-struct fighter(designation acceleration top-speed range))

(define (within-range a-fighter distance-to-target)
   (cond
     [ (>= (fighter-range a-fighter) distance-to-target) true ]
     [ else false ]
   )
)

(define (reduce-range a-fighter)
   (make-fighter (fighter-designation a-fighter)
                 (fighter-acceleration a-fighter)
                 (fighter-top-speed a-fighter)
                 (/ (* (fighter-range a-fighter) 80) 100)
   )
)


(within-range (make-fighter 'mig22 50 2500 5000) 10000)

(reduce-range (make-fighter 'f22 40 3000 10000))