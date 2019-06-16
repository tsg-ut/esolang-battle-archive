open String
let l=ref 0
let rec r z=r(read_line()|>fun s->let i=try index s 'K'with _->try l:=index s 'T';!l with _-> !l in print_endline(make i ' '^make(!l-i+1)'*'))let()=r()