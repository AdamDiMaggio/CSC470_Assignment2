;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework1_22) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;filter in 1.22 [**]
(define filter-in
  (lambda (pred lst)
    (cond
      ((null? lst) '()) ;list given is empty
      ((pred (car lst)) (cons (car lst) (filter-in pred (cdr lst)))) ;the first element matches the pred
      (else (filter-in pred (cdr lst))))))


;filter-in that counts all values including ones in lists
(define filter-in-all
  (lambda (pred lst)
    (cond
      ((null? lst) '()) ;list given is empty
      ((list? (car lst)) (append (filter-in pred (car lst)) (filter-in pred (cdr lst)))) ;list given has a list as its first element
      ((pred (car lst)) (cons (car lst) (filter-in pred (cdr lst)))) ;the first element matches the pred
      (else (filter-in pred (cdr lst)))))) ;the first element doen't match pred

(filter-in number? '( a 2 (1 3) b 7))
(filter-in symbol? '(a (b c) 17 foo)) 