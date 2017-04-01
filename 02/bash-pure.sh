while read -n1 c;do a[c]+=$c;done
echo $(IFS=;echo "${a[*]}")