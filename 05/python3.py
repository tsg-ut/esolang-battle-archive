a,*b,c=open(0)
i=a.find("T")
d=c.rstrip()+"*"*i
print(a+a*len(b)+d[:i+1])