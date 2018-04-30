#define Z(a,b,c) int a,b,c;scanf(A,&a,&b,&c);a-=j;b-=k;c-=l;
*A="%d%d%d";j,k,l;main(){scanf(A,&j,&k,&l);Z(a,b,c)Z(d,e,f)Z(g,h,i)printf("%d",(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6);}