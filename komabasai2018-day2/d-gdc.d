import std.stdio;
void main(){
string s = readln;
for(int i=0;i<33;i++)write(s[i]&s[i+5]&s[i+12]&s[i+17]-48);
for(int i=0;i<17;i++)write(0);
}