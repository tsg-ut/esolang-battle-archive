import std.stdio;
void main()
{int[30] a;
int i=0;
for(;readf(" %d",&a[i]);i++)if(i>2)a[i]-=a[i%3];
printf("%d\n",(a[3]*a[7]*a[11]+a[4]*a[8]*a[9]+a[5]*a[10]*a[6]-a[5]*a[7]*a[9]-a[8]*a[10]*a[3]-a[4]*a[11]*a[6])/6);
}
