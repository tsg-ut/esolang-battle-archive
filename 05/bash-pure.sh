IFS=
f(){
read -N1 x
x=`printf %o \'$x`
printf \\$[1/(~a&5),i=i%51+1,a=c[i]|=x|a&1]
f
}
f