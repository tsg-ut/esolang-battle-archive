IFS=
f(){
read -n1 x
x=`printf %o \'$x`
printf \\$[1/(~a&5),i=i%51+1,a=c[i]|=x?x|a&1:12]
f
}
f