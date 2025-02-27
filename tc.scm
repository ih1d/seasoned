;; Author: Isaac H. Lopez Diaz <isaac.lopez@upr.edu>
;; Description: Chapter 2 from The Reasoned Schemer

;; Removes the element a in the list lat
;; multiple times, if necessary
#| USE letrec TO REMOVE ARGS THAT DO NOT CHANGE FOR RECURSIVE APPLICATIONS |#
(define multirember
  (lambda (a lat)
    ((letrec
	 ((mr (lambda (lat)
		(cond
		 ((null? lat) '())
		 ((eq? a (car lat))
		  (mr (cdr lat)))
		 (else
		  (cons (car lat)
			(mr (cdr lat))))))))
       mr)
     lat)))
