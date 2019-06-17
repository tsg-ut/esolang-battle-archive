%%!
main(_)->f(0).
f(X)->C=io:get_chars("",1),Y=case C of"T"->0;"K"->X-50;eof->halt();_->X+1 end rem 51,io:put_chars(if Y<1->"@";true->C end),f(Y).