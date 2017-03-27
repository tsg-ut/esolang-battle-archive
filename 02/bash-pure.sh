a=()
while read -n 1 c; do
a+=($c)
done
q(){
   local k i s=() l=()
   p=()
   (($#==0)) && return 0
   k=$1
   shift
   for i; do
      if [[ $i < $k ]]; then
         s+=( "$i" )
      else
         l+=( "$i" )
      fi
   done
   q "${s[@]}"
   s=( "${p[@]}" )
   q "${l[@]}"
   l=( "${p[@]}" )
   p=( "${s[@]}" "$k" "${l[@]}" )
}
q "${a[@]}"
b=$(IFS=;echo "${p[*]}")
echo $b
