open String
let rec f s t=try f(print_endline s;s)(read_line()) with _->index s 'T'+1|>sub(sub t 0(index t 'K')^make 99 '*')0|>print_string
let _=f(read_line())""