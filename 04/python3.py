x,y,z,*s=map(int,open(0).read().split())
print(sum((s[i]-x)*((s[i-5]-y)*(s[i-1]-z)-(s[i-2]-y)*(s[i-4]-z))for i in[0,3,6])//6)