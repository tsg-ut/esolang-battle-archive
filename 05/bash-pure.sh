IFS=
f(){
read -N1 x
printf \\$[1/(~a&5),i=i%51+1,a=c[i]|=`printf %o \'$x`|a&1]
f
}
f