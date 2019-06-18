#define constexpr
char o[3000],x,*p=o;
#define f(i)([](){for(;*i;*p++=*i++|x<1)x=*i&4?0:-~x%51-*i%2*51;}(),o)