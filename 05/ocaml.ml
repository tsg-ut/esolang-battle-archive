open String
let rec f s t=try let t=read_line()in print_endline s;f s t with _->index s 'T'+1|>sub((index t 'K'|>sub t 0)^make 99 '*') 0|>print_string
let _=f(read_line())""