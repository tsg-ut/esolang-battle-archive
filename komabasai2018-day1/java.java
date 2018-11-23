import java.util.*;interface A{
    static void main(String[]a){
    int i,w=0,h=0;
    Scanner s=new Scanner(System.in);
    h=s.nextInt();
    w=s.nextInt();
    String q="*",p=" ";
    for (i=0;i<w;i++){
    System.out.print(q);    
    }
    System.out.println();
    for (i=0;i<h-2;i++){
        System.out.print(q);
        for (int j=0;j<w-2;j++){
            System.out.print(p);
        }
        System.out.println(q);    
    }
    for (i=0;i<w;i++){
    System.out.print(q);    
    }
    System.out.println();

    }
}

