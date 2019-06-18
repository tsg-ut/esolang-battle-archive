f=fn s,i,j,f->case IO.getn(s,1)do
t->j-1!=i&&f.(i<50&&j==0&&t||1,i<50&&"T"!=t&&i+1||0,t=="K"&&1||j,f)end
end
f.("",0,0,f)