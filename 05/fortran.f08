character(50)a,b
read 2,b
i=index(b,'T')
print 2,b
1 read 2,a
2 format(a)
j=index(a,'K')
if(j==0)print 2,b
if(j==0)goto 1
print 2,a(1:j)//repeat('*',i-j)
end