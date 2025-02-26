;; Helper functions from The Little Schemer
;; Author: Isaac H. Lopez Diaz

;; Determines if the expression passed is an atom
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; Increases the numner passed by one
(define (add1 x)
  (+ x 1))

;; Decreases the number passed by one
(define sub1
  (lambda (x)
    (- x 1)))

;; Checks if value is equal to 1
(define one?
  (lambda (x)
    (= x 1)))
