open List
open String
let p=print_endline
let l=ref 0
let rec r()=try(let s=read_line()in
if!l=0 then(l:=index s 'T';p s)else p(try(let i=index s 'K'in make i ' '^"K"^make(!l-i)'*')with _->make!l ' '^"*");r())with _->()let()=r()