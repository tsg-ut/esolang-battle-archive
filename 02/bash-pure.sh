while read -n 1 c;do((a[c]++));done
for i in {0..9};do for((;a[i]--;));do echo -n $i;done;done