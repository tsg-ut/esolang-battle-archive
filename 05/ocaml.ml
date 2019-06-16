open String
let rec f s t=try let t=read_line()in print_endline s;f s t with _->index s 'T'+1|>sub(sub t 0(index t 'K')^make 99 '*')0|>print_string
let _=f(read_line())""