#!racket
(define(main t l)(if(string>? l t)(main(string-replace t" T""TT")l)(begin(display t)(newline)(main t(read-line)))))(main(read-line)"")