i=io.read("*l")
j=i
r=i.find(i,"T")
while not i.find(j,"K") do
    print(i)
    j=io.read("*l")
end
l=i.find(j,"K")
print(i.rep(" ",l-1)..i.rep("K",r-l+1)..i.rep(" ",i.len(i)-r))
