Y=print
R=io.read
Z="K"
i=R("*l")
K=i.rep
F=i.find
j=i
r=F(i,"T")
while not F(j,Z) do
Y(i)
j=R("*l")
end
l=F(j,Z)
Y(K(" ",l-1)..K(Z,r-l+1)..K(" ",i.len(i)-r))
