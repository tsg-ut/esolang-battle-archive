#!
main(_)->f(1).
f(X)->C=io:get_chars("",1),io:put_chars(if C==eof->halt();X<1->"@";true->C end),f(case C of"T"->1;"K"->X-50;_->X+1 end rem 51).