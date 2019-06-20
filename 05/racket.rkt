#!racket
(define(m t l)(if(string>? l t)(m(string-replace t" T""TT")l)(begin(display t)(newline)(m t(read-line)))))(m(read-line)"")