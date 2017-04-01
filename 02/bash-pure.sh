a=()
while read -n 1 c;do a+=($c);done
for((i=0;i<100;i++));do for((j=0;j<99;j++));do k=$((j+1));if [[ ${a[j]} > ${a[k]} ]];then t=${a[k]};a[k]=${a[j]};a[j]=$t;fi;done;done
echo $(IFS=;echo "${a[*]}")