#include<stdio.h>
int i,a,b;main(){for(;a<50;a++){for(b=i=0;b<8;b++){i+=getchar()&1;i*=2;}getchar();i/=2;for(b=0;i>0;b++)i-=b;putchar(i<0?48:49);}}