while a=gets()
c=a.to_i
b=0
i=0
while i<8
r=c%10
c/=10
b+=r*(2**i)
i+=1
end
i=1
while b>0
b-=i
i+=1
end
if b==0
puts(1)
else
puts(0)
end
end