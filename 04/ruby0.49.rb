x=[]
i=0
while gets()
    for w in $_.split('/\s/')
    x[i]=w.split(" ")
    end
    i=i+1
end
p=x[0]
q=x[1]
r=x[2]
s=x[3]
j=p[0].to_i
k=p[1].to_i
l=p[2].to_i
a=q[0].to_i-j
b=q[1].to_i-k
c=q[2].to_i-l
d=r[0].to_i-j
e=r[1].to_i-k
f=r[2].to_i-l
g=s[0].to_i-j
h=s[1].to_i-k
i=s[2].to_i-l
print ((a*e*i+b*f*g+c*d*h-a*f*h-b*d*i-c*e*g)/6)
