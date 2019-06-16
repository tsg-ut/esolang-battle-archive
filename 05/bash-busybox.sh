sed '1h
1!{$!g
${x
:1
/T /{s/T /T/;x;s/K /K/;x}
t1
:2
/ T/{x;/K /{x;s/ T/T/;x;s/K /KK/};x}
t2
x}}'