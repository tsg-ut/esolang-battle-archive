let rec f x=let c=input_char stdin in
let x=match c with 'T'->51|'K'->x-50|_->(x+1)mod 51 in
print_char(if x<1 then 'x' else c);f x;;f 0