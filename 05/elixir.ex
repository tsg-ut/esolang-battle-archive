f=fn s,i,j,f->case IO.getn(s,1)do
:eof->1
t->f.(i<50&&i*j==0&&t||1,i<50&&"T"!=t&&i+1||0,t=="K"&&1||i*j,f)end
end
f.("",0,0,f)