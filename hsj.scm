;; Author: Isaac H. Lopez <isaac.lopez@upr.edu>
;; Description: Chapter 13 from The Seasoned Schemer

;; Intersection of two lists
(define intersect
  (lambda (set1 set2)
    (letrec
	((I (lambda (set)
	      (cond
	       ((null? set) '())
	       ((member (car set) set2)
		(cons (car set)
		      (I (cdr set))))
	       (else
		(I (cdr set)))))))
      (I set1))))

;; Intersection of list of lists

