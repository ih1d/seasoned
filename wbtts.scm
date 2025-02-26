;; Author: Isaac H. Lopez Diaz <isaac.lopez@upr.edu>
;; Description: Chapter 1 from The Seasoned Schemer

;; Determine if two elements are in a row
(define two-in-a-row?
  (lambda (lat)
    (cond ((null? lat) #f)
	  (else
	   (or (is-first-b? (car lat) (cdr lat))
	       (two-in-a-row? (cdr lat)))))))

;; Checks to see if the first two elements are equal
(define is-first?
  (lambda (a lat)
    (cond ((null? lat) #f)
	  (else (eq? (cat lat) a)))))

;; Revised version
(define two-in-a-row-b?
  (lambda (preceding lat)
    (cond
     ((null? lat) #f)
     (else (or (eq? (car lat) preceding)
	       (two-in-a-row-b? (car lat) (cdr lat)))))))

(define is-first-b?
  (lambda (a lat)
    (cond ((null? lat) #f)
	  (else
	   (or (eq? (car lat) a)
	       (two-in-a-row? lat))))))

;; Sum of prefixes
(define sum-of-prefixes
  (lambda (lat)
    (cond ((null? lat) lat)
	  (else (sum-of-prefixes-b lat (cons (car lat) '()))))))
