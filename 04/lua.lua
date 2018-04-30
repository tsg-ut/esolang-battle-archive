X={}for i=-3,8 do X[i]=io.read("*n")-(X[i%3-3]or 0)end
print((X[0]*(X[4]*X[8]-X[5]*X[7])+X[1]*(X[5]*X[6]-X[3]*X[8])+X[2]*(X[3]*X[7]-X[4]*X[6]))//6)