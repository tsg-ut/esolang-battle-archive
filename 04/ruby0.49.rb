print(system2("bash -c 'a=(`cat`)
for((;z<9;)){
$[a[t=z]-=a[9+t++%3],s+=z/6*a[z++]*(a[p=t++%3+3]*a[t%=3]-a[t+3]*a[p-3])/6]
}
echo $s'"))