while read -N1 c;do c=`printf %d "'$c"`;x=$[c&4?0:-~x%51-c%2*51];printf \\`printf %o $[c|=x<1]`;done