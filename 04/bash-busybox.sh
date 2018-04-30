read j k l
read a b c
read d e f
read g h i
echo $[a-=j,b-=k,c-=l,d-=j,e-=k,f-=l,g-=j,h-=k,i-=l,(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6]