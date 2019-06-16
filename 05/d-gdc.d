import std.stdio;
void main(){int b,c,d=1;
for(;~(c=getchar());d=++d%51)
  d*=c!=84,
  b=c&1|b&&d,
  putchar(!d|b?99:c);
}