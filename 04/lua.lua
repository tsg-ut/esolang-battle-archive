X={0,0}
X[0]=0
i=0
c=1
while c do
c=io.read("*n")
if c then
X[i]=c-X[i%3]
i=i+1
end end
print((X[3]*X[7]*X[11]+X[4]*X[8]*X[9]+X[5]*X[6]*X[10]-X[3]*X[8]*X[10]-X[4]*X[6]*X[11]-X[5]*X[7]*X[9])//6)