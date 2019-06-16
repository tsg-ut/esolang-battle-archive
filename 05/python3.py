a,*b,c=open(0)
print(a+a*len(b)+(c.rstrip()+"*"*99)[:a.find("T")+1])