IFS= read a;while IFS= read b;do
echo "$a";f="$b";g="$f"
done
c=`echo "$a"|sed -r 's/T.+/T/'`
d=`echo "$g"|sed -r 's/K.+/K/'`
printf "$d"
printf "*%.s" `eval echo {1..$[${#c}-${#d}]}`