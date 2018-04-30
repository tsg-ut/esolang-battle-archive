a={}for k=1,12 do a[#a+1]=io.read("*n")end
for z=1,9 do a[z]=a[z]-a[10+~-z%3]end
s=0
for z=1,3 do q=-~z%3;s=s+a[z]*(a[7+z%3]*a[4+q]-a[4+z%3]*a[7+q])end
print(math.ceil(s/6))