let rec f x=let c=input_char stdin in
let x=if c='T' then 51 else if c='K' then x-50 else (x+1)mod 51 in
print_char(if x<1 then 'x' else c);f x;;f 0