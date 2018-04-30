X={}
x=0
for i=-3,8 do
X[i]=io.read("*n")-(X[i%3-3]or 0)if i>5 then p=-~i%3
q=~-i%3
x=x+X[i]*(X[p]*X[q+3]-X[q]*X[p+3])end
end
print(x//6)