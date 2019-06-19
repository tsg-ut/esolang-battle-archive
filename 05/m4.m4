syscmd(`sed "1h
\${:1
x
s/ \$//
t1
x
s/K /KK/
t1
h}
g"')