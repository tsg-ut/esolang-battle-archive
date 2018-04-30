X=[*map(int,open(0).read().split())]
a,b,c,d,e,f,g,h,i=[int(b)-a for a,b in zip(X[0:3]*3,X[3:])]
print((a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)//6)