while read a;do b=$[2#$a*8+1];for ((c=$b;c*c>b;c--));do :;done;echo $[c*c==b];done;