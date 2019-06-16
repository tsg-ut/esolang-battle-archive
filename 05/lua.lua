a=0
i=1
c={}
while a<117 do
s=io.read(1)i=i%51+1
c[i]=(c[i] or 0)|s:byte(1)a=c[i]|a&1
io.write(string.char(a))end