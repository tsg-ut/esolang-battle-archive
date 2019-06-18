IFS=
f(){
read -n1 x
x=`printf %o \'$x`
printf \\$[1/(~c[i]&5),i=i%51+1,x?a=c[i]|=x|a&1:12]
f
}
f