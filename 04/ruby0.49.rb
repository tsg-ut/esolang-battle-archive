x=[]
i=0
while gets()
    for w in $_.split('/\s/')
    a=w.split(" ")
    end
x[i]=a 
i=i+1
end
a=x[1][0].to_i - x[0][0].to_i
b=x[1][1].to_i - x[0][1].to_i
c=x[1][2].to_i - x[0][2].to_i
d=x[2][0].to_i - x[0][0].to_i
e=x[2][1].to_i - x[0][1].to_i
f=x[2][2].to_i - x[0][2].to_i
g=x[3][0].to_i - x[0][0].to_i
h=x[3][1].to_i - x[0][1].to_i
i=x[3][2].to_i - x[0][2].to_i
print ((a*e*i+b*f*g+c*d*h-a*f*h-b*d*i-c*e*g)/6)
