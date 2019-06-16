open String
let rec r s=let t=read_line()in s^"\n"^(try let p=index t 'K'in(make p ' ')^(make((index s 'T')-p+1)'*')with _->r s);;print_string(r(read_line()))