int i,a,b;main(){for(;a<50;a++){for(b=i=0;b<9;b++,i=i*2|getchar()&1);i/=2;for(b=0;i>0;)i-=b++;putchar(i?48:49);}}