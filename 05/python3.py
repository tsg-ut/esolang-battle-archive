a,*b,c=open(0)
i=a.find("T")
x=a
for l in b:x+=a
d=c.rstrip()+"*"*i
print(x+d[:i+1])