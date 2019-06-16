open String
let p=print_endline
let l=ref 0
let rec r()=let s=read_line()in
p(let i=try index s 'K'with _->try l:=index s 'T';!l with _-> !l in make i ' '^make(!l-i+1)'*');r()let()=r()