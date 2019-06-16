o=io.read
i=o"l"
j=i
r=i:find"T"
while not j:find"K"do
print(i)
j=o"l"
end
l=j:find"K"
f=i.rep
print(f(" ",l-1)..f("K",r-l+1)..f(" ",#i-r))