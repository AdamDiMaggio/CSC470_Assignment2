;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework1_23) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;list-index in 1.23 [**]

(define list-index
  (lambda (pred lst)
    (cond
      ((null? lst) #f) ;list given is empty
      ((pred (car lst)) 0)  ;the first element matches the pred
      (else (+ 1 (list-index pred (cdr lst)))))))

;indexCounter should always be zero
;-1 acts as a #f output when there are no successful matches
(define list-index2
  (lambda (pred lst indexCounter)
    (cond
      ((null? lst) (- 0 (+ indexCounter 1))) ;list given is empty
      ((pred (car lst)) 0)  ;the first element matches the pred
      (else (+ 1 (list-index2 pred (cdr lst) (+ 1 indexCounter)))))))

(list-index2 number? '(a 2 (1 3) b 7) 0)
(list-index2 symbol? '(a (b c) 17 foo) 0)
(list-index2 symbol? '(1 2 (a b) 3) 0)   