a,b,c,d,e,f,g,h,i,j,k,l;main(){scanf("%d%d%d%d%d%d%d%d%d%d%d%d",&j,&k,&l,&a,&b,&c,&d,&e,&f,&g,&h,&i);a-=j;b-=k;c-=l;d-=j;e-=k;f-=l;g-=j;h-=k;i-=l;printf("%d",(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6);}