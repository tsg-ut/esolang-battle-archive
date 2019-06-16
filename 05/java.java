import java.util.Scanner;
public class A{
public static void main(String[]a){
boolean b=false;
int d=1;
Scanner s=new Scanner(System.in);
String g;
while((g=s.nextLine())!=null){
for(int i=0;i<g.length();++i){
char c=g.charAt(i);
if(c>83)d=0;
b=c==75||b&&d>0;
System.out.print(d==0||b?"A":c+"");
d=++d%50;
}System.out.println();}}}
