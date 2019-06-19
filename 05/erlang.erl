
main(Z)->f(1,Z).
f(X,S)->Y=case C=io:get_chars(S,1)of"T"->1;"K"->X-50;eof->halt();_->X+1end rem 51,f(Y,if X<1->"@";0<1->C end).