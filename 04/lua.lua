X={}
for i=-3,8 do
X[i]=io.read("*n")-(X[i%3-3]or 0)
p=-~i%3
q=~-i%3
x=i>5 and x+X[i]*(X[p]*X[q+3]-X[q]*X[p+3])or 0
end
print(x//6)