a=(`cat`)
for z in {0..8};{
$[a[t=z]-=a[9+z%3],s+=z/6*a[z]*(a[p=++t%3+3]*a[q=++t%3]-a[q+3]*a[p-3])/6]
}
echo $s