import std.stdio;import std.conv;import std.math;void main(){for(int i=50;i--;){write(sqrt(to!int(readln()[0..8],2)*8+1.)%2==1?1:0);}}