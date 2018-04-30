a={}for k=1,4 do for s in string.gmatch(io.read(),"%w+")do a[#a+1]=s end end
for z=1,9 do a[z]=a[z]-a[10+~-z%3]end
s=0
for z=1,3 do p=z%3;q=(z+1)%3;s=s+a[z]*(a[7+p]*a[4+q]-a[4+p]*a[7+q])end
print(math.floor(s/6))