while read -n1 c;do a[c]+=$c;done
IFS=;echo "${a[*]}"