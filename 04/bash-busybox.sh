tr '
' \ |awk '{for(i=9;i;)$i-=$(--i%3+10);print(($2*$4-$1*$5)*$9+($3*$5-$2*$6)*$7+($1*$6-$3*$4)*$8)/6}'