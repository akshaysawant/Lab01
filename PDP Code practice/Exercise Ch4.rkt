
#lang racket


;; Ex 4.4.1.

(define (interest-amount deposit interest-rate)
   (/ (* deposit  interest-rate) 100)
)

(define (interest deposit)
   (cond
    [ (<= deposit 1000) ( interest-amount deposit 4 ) ]
    [ (<= deposit 5000) ( interest-amount deposit 4.5 ) ]
    [ (> deposit 5000)  ( interest-amount deposit 5 ) ] 
   ) 
)


;;(interest 98723)
;;----------------------------------------------------


;; Ex 4.4.2.

(define (tax gross-pay)
   (cond
     [ (<= gross-pay 240) ( tax-calc gross-pay 0 ) ]
     [ ( and (> gross-pay 240) (<= gross-pay 480) ) ( tax-calc gross-pay 15) ]
     [ (> gross-pay 480) ( tax-calc gross-pay 28) ]
   )
)

(define (tax-calc gross-pay tax-rate)
   ( / (* gross-pay tax-rate) 100)
)


(define (netpay hours-worked)
   ( - (gross-pay hours-worked) (tax (gross-pay hours-worked)))
)

(define (gross-pay hours-worked)
   (* hours-worked 12)
)

;;(tax 300)
;;(netpay 25)
;;----------------------------------------------------



;; Ex 4.4.3.

(define (pay-back amount)
   (cond
     [ (<= amount 500) (range-1 amount)]
     [ (<= amount 1500) (range-2 amount)]
     [ (<= amount 2500) (range-3 amount)]
     [ (> amount 2500) (range-4 amount)]
   )
)

(define (range-1 amount)
  (cond
     [ (< amount 500) (/ (* 0.25 amount) 100) ]
     [ else (/ (* 0.25 500) 100) ]
   )
)

(define (range-2 amount)
   (+ (range-1 amount) (/ (* 0.5 (- amount 500)) 100))
)

(define (range-3 amount)
   (+ (range-2 amount) (/ (* 0.75 (- amount 1500)) 100))
)

(define (range-4 amount)
     (+ (range-3 amount) (/ (* 0.5 (- amount 2500)) 100))
)



;;(pay-back 400)

;;(pay-back 1400)

;;(pay-back 2000)

;;(pay-back 2600)


;;-----------------------------------------------------




(define (how-many a b c)
   (cond
     [ (= a 0) false ]
     [ (> (sqr b) (* 4 (* a c)) ) 2 ]
     [ (= (sqr b) (* 4 (* a c)) ) 1 ]
     [ (< (sqr b) (* 4 (* a c)) ) 0 ]
   )
)

(how-many 0 0 -1)
(how-many 2 4 2)