x=[]
i=0
while gets()
    for w in $_.split('/\s/')
    x[i]=w.split(" ")
    end
    i=i+1
end
y =x[0]
j =y[0].to_i
k =y[1].to_i
l =y[2].to_i
a=x[1][0].to_i-j
b=x[1][1].to_i-k
c=x[1][2].to_i-l
d=x[2][0].to_i-j
e=x[2][1].to_i-k
f=x[2][2].to_i-l
g=x[3][0].to_i-j
h=x[3][1].to_i-k
i=x[3][2].to_i-l
print ((a*e*i+b*f*g+c*d*h-a*f*h-b*d*i-c*e*g)/6)
