%%!
f(S,I)->case string:chr(io:get_line(""),$K)of
0->io:format(S),f(S,I);J->io:format(string:copies(" ",J-1)++string:copies("*",2+I-J))
end.
main(_)->I=string:chr(S=io:get_line(""),$T)-1,io:format(S),f(S,I).