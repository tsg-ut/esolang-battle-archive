open String
let p=print_endline
let l=ref 0
let rec r()=let s=read_line()in
if!l=0 then p(l:=index s 'T';s)else p(try(let i=index s 'K'in make i ' '^make(!l-i+1)'*')with _->make!l ' '^"*");r()let()=r()