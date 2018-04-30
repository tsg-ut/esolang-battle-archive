s=0
a={}for k=12,1,-1 do
a[k]=io.read("*n")-(k<=9 and a[10+~-k%3]or 0);q=-~k%3
s=s+(k<4 and a[k]*(a[4+k%3]*a[7+q]-a[7+k%3]*a[4+q])or 0)end
print(s//6)