%%!
f(S,I)->case string:chr(io:get_line(""),$K)of
0->io:format(S),f(S,I);J->io:format("~*c~*c",[J-1,$ ,2+I-J,$*])
end.
main(_)->io:format(S=io:get_line("")),f(S,string:chr(S,$T)-1).