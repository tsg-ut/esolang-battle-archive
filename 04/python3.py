j,k,l,a,b,c,d,e,f,g,h,i=[int(_)for _ in open("/dev/stdin").read().split()]
a-=j
b-=k
c-=l
d-=j
e-=k
f-=l
g-=j
h-=k
i-=l
print((a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)//6)