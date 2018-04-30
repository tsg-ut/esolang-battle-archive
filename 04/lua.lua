a={}for k=1,4 do for s in string.gmatch(io.read(),"%w+")do a[#a+1]=s end end
for z=1,9 do a[z]=a[z]-a[10+~-z%3]end
print(math.floor((a[8]*(a[1]*a[6]-a[4]*a[3])+a[7]*(a[5]*a[3]-a[2]*a[6])+a[9]*(a[4]*a[2]-a[1]*a[5]))/6))