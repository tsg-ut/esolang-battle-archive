import std.stdio;void main(){int[30]a;for(int i=0;readf(" %d",&a[i]);i++)a[i]-=a[i%3]*(i>2);printf("%d\n",(a[3]*(a[7]*a[11]-a[8]*a[10])+a[4]*(a[8]*a[9]-a[11]*a[6])+a[5]*(a[10]*a[6]-a[7]*a[9]))/6);}