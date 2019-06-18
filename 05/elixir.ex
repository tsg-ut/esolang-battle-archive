f=fn s,i,j,f->case IO.getn(s,1) do
:eof->a=1
t->
f.((i==50||i*j>0)&&1||t,i<50&&t !="T"&&i+1||0,t=="K"&&1||i*j,f)end
end
f.("",0,0,f)