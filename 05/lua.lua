d=io.read
f=d(51)
h=d'*a'
p,c=h:gsub(' *\n','')
print(f:rep(c)..p..f.rep(0,f:find"T"-p:find"K"))