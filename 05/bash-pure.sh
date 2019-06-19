IFS=
f(){
read -N1 x
printf \\$[1/(~a&5),a=c[i=i%51+1]|=`printf %o \'$x`|a&1]
f
}
f