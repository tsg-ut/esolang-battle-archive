#lang racket
(define (f s x y)
(let ([t (regexp-replace x s y)]) (if (pair? (regexp-match x t)) (f t x y) t))
)
(display (f (f (car (regexp-match #px"\\D*" (current-input-port))) #px"([^T]{50}) " "\\1T") #px"K " "KK"))

