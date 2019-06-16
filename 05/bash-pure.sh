x=0
t=99
f=0
while IFS= read -N 1 c; do
if [ "$c" = T ]; then
  t=$((x+1))
  x=99
  echo -n T
elif [ $x = $t ]; then
  f=0
  echo -n T
elif [ "$c" = K ]; then
  f=1
  echo -n K
elif [ $f = 1 ]; then
  echo -n K
elif [[ "$c" = $'\n' ]]; then
  x=0
  echo
else
  echo -n " "
fi
x=$((x+1))
done