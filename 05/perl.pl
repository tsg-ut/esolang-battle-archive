print$a=$b=<>;
$a=~tr/T/*/;
<>;
$c=$_,print$a for<>;
$_=$a^$b^$c;
s/\^ *(?=K)|(?<=K) *\^/'*'x length($&)/e;
tr/5/K/;
print
