%%!
f(S)->case string:chr(io:get_line(S),$K)of
0->f(S);J->io:format("~*cA~*c",[J-1,$ ,string:chr(S,$T)-J,$*])
end.
main(_)->f(io:get_line("")).