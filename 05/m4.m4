m4wrap(`syscmd(`sed "1h
\${:1
x
s/ \$//
t1
x
:2
s/K /KK/
t2
h
}
g"')')