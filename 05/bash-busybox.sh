IFS= read a;while IFS= read b;do
echo "$a";f="$b";g="$f"
done
c=`sed -r s/T.+/T/<<<$a`
d=`sed -r s/K.+/K/<<<$g`
printf "$d"
printf *%.s `eval echo {1..$[${#c}-${#d}]}`