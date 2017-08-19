while a=gets()
b=a.to_i 2
i=1
while b>0
b-=i
i+=1
end
puts b==0 ?1:0
end