import java.util.*;class A{public static void main(String[]a){Scanner s=new Scanner(System.in);int[]X=new int[12];for(int i=0;i<12;i++)X[i]=s.nextInt()-X[i%3];System.out.printf("%d",(X[3]*(X[7]*X[11]-X[8]*X[10])+X[4]*(X[8]*X[9]-X[6]*X[11])+X[5]*(X[6]*X[10]-X[7]*X[9]))/6);}}