a=(`cat`)
for((;z<9;));{
$[a[t=z]-=a[9+t%3],s+=t/6*a[z++]*(a[p=++t%3+3]*a[q=++t%3]-a[q+3]*a[p-3])/6]
}
echo $s