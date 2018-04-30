a=(`cat`)
for z in {0..8};{
$[a[z]-=a[9+z%3],s+=z/6*a[z]*(a[p=3+(z+1)%3]*a[q=(z+2)%3]-a[q+3]*a[p-3])/6]
}
echo $s