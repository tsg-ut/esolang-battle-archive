a=(0 0 0 0 0 0 0 0 0 0)
while read -s -n 1 C;do $((++a[C]));done
for((i=0;i<10;i++));do
for((j=a[i];j>0;j--));do out+=$i
done
done
echo $out
