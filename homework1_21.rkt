;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework1_21) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;cartesian product 1.21 [**]
(define product
  (lambda (sos1 sos2)
    (cond
      ((null? sos1) '()) ;found product of all elements
      ((null? sos2) '()) ;reached end of sos2
      (else (cons
             (cons                          ;constructs list for a single element of sos1 w/ all elements of sos2
              (cons (car sos1) (cons (car sos2) '()))
              (product sos1 (cdr sos2)))
             (product (cdr sos1) sos2)))))) ;makes transition to next element in sos1

(product '(a b c) '(x y))

