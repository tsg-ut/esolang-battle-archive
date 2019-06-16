open List
open String
let p=print_endline
let rec r x=try r(read_line()::x)with _->x
let _=fold_right(fun s l->if l=0 then(p s;index s 'T')else(p(try(let i=index s 'K'in make i ' '^"K"^make(l-i)'*')with _->make l ' '^"*");l))(r[])0