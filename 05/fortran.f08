character(50)a,b
read 2,b
i=index(b,'T')
1 print 2,b
read 2,a
2 format(a)
j=index(a,'K')
if(j==0)goto 1
print 2,a(1:j)//repeat('*',i-j)
end