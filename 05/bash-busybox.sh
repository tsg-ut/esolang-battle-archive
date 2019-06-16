sed '1h
1!{$!g
${x
:1
/T /{s/T /T/;x;s/K /K/;x}
t1
x
:2
s/K /KK/
t2
}}'