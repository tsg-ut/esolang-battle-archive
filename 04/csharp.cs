using System;
using System.Linq;
class A{static void Main(){
char[] c={' ','\n'};
string s=Console.In.ReadToEnd();
int[] a=s.Split(c).Take(12).Select(Int32.Parse).ToArray();
foreach(int z in Enumerable.Range(0,9))a[z]-=a[9+z%3];
Console.Write(-(a[7]*(a[3]*a[2]-a[0]*a[5])+a[6]*(a[1]*a[5]-a[4]*a[2])+a[8]*(a[0]*a[4]-a[3]*a[1]))/6);
}}