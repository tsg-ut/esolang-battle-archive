character(len=50) a,b
read'(a)',b
i=index(b,'T')
print'(a)',b
1 read'(a)',a
j=index(a,'K')
if(j==0)print'(a)',b
if(j==0)goto 1
print'(a)',a(1:j)//repeat('*',i-j)
end