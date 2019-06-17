let rec f?(c=input_char stdin)x=let x=(match c with 'T'->0|'K'->x-50|_->x+1)mod 51 in
print_char(if x<1 then 'x'else c);f x;;f 0