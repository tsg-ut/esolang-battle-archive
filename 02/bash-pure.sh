a=()
while read -n 1 c;do a[$c]=$((a[c]+1));done
for((i=0;i<10;i++));do for((j=0;j<${a[i]};j++));do echo -n $i;done;done