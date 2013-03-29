#!/usr/bin/guile -s
!#

(display (= 10 10))
(display (= (+ 5 3 4) 12))
(display (= (- 9 1) 8))
(display (= (/ 6 2) 3))
(display (= (+ (* 2 4) (- 4 6))
            6))
(define a 3)    ; 3
(define b (+ a 1))    ; 4
(display (equal? #f (= a b)))
(display (= (if (and (> b a) (< b (* a b)))
                b
                a)
            4))
(display (= (cond ((= a 4) 6)
                  ((= b 4) (+ 6 7 a))
                  (else 25))
            16))
(display (= (+ 2 (if (> b a) b a))
            6))
(display (= (* (cond ((> a b) a)
                     ((< a b) b)
                     (else -1))
               (+ a 1))
            16))
(newline)
