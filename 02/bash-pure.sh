while read -n 1 c;do a[c]+=$c;done
for i in {0..9};do echo -n ${a[i]};done