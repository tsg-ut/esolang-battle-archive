open String
let l=ref 0
let rec r()=let s=read_line()in
print_endline(let i=try index s 'K'with _->try l:=index s 'T';!l with _-> !l in make i ' '^make(!l-i+1)'*');r()let()=r()