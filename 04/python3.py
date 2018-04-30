s=open(0).read().split()
a,b,c,d,e,f,g,h,i=[int(s[i+3])-int(s[i%3])for i in range(9)]
print((a*(e*i-h*f)+b*(f*g-i*d)+c*(d*h-g*e))//6)