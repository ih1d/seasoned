;; Author: Isaac H. Lopez Diaz <isaac.lopez@upr.edu>
;; Description: Chapter 1 from The Seasoned Schemer

(load "helpers.scm")

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
  (lambda (tup)
    (sum-of-prefixes-b 0 tup)))

(define sum-of-prefixes-b
  (lambda (sonssf tup)
    (cond
     ((null? tup) '())
     (else (cons (+ sonssf (car tup))
		 (sum-of-prefixes-b
		  (+ sonssf (car tup))
		  (cdr tup)))))))

;; Pick the nth element from a list
(define pick
  (lambda (n lat)
    (cond
     ((one? n) (car lat))
     (else (pick (sub1 n) (cdr lat))))))

(define scramble-b
  (lambda (tup rev-pre)
    (cond
     ((null? tup) '())
     (else
      (cons (pick (car tup)
		  (cons (car tup) rev-pre))
	    (scramble-b (cdr tup)
			(cons (car tup) rev-pre)))))))

(define scramble
  (lambda (tup)
    (scramble-b tup '())))
