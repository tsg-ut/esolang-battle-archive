i=36,a[8];main(s){for(;i--;scanf("%d",a+35-i))s-=a[i/2]*a[8-i/12*6-i%3]*(1-i%2*2)*a[(i/6+1&2)*3+(i+3)/2%3+3];printf("%d",s/6);}