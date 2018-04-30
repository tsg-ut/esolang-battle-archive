s=[*map(int,open(0).read().split())]
a,b,c,d,e,f,g,h,i=[s[i+3]-s[i%3]for i in range(9)]
print((a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)//6)