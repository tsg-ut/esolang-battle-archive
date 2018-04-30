a,b,c,d,e,f,g,h,i,j,k;
main(l){scanf("%d%d%d%d%d%d%d%d%d%d%d%d",&a,&b,&c,&d,&e,&f,&g,&h,&i,&j,&k,&l);g-=a;h-=b;i-=c;j-=a;k-=b;l-=c;printf("%d",((e-b)*(i*j-g*l)+(f-c)*(g*k-h*j)+(d-a)*(h*l-i*k))/6);}
