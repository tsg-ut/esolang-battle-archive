f=fn s,i,j,f->t=IO.getn s,1
(j||i>0)&&f.(i<50&&j&&t||1,i<50&&t<"T"&&i+1||0,j&&"K"!=t,f)end
f.("",0,0,f)