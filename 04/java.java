import java.util.*;interface A{static void main(String[]a){int i=0,x=0,p,q,X[]=new int[12];for(Scanner s=new Scanner(System.in);i<12;)x+=i/9*(X[i]=s.nextInt()-X[i%3])*(X[p=++i%3+3]*X[q=-~i%3+6]-X[p+3]*X[q-3]);System.out.print(x/6);}}