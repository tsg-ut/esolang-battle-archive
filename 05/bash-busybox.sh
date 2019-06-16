IFS= read a;while IFS= read b;do
echo "$a";g="$b"
done
c=`sed s/T.*/T/<<<$a`
d=`sed s/K.*/K/<<<$g`
printf "$d"
printf *%.s `eval echo {1..$[${#c}-${#d}]}`