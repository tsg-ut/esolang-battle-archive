import std.stdio;
import std.array;
import std.math;
import std.conv;

bool issq(int a) {
    return cast(int)sqrt(cast(real)a)*cast(int)sqrt(cast(real)a) == a;
}

bool tri(int a) {
    return issq(8*a+1) && (cast(int)sqrt(8.0*a+1) % 2);
}
void main() {
    string s;
    while ((s = readln()).length > 3) {
        int i = to!int(split(s)[0],2);
        if(tri(i)) {
            writeln("1");
        } else {
            writeln("0");
        }
    }
}