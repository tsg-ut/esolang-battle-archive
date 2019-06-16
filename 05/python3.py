a,*b,c=open(0)
i=a.find("T")
print(a+a*len(b)+(c.rstrip()+"*"*i)[:i+1])