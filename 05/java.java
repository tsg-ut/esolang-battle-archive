class A{public static void main(String[]a)throws Exception{int d=1,c;while((c=System.in.read())>0){if(c>83)d=0;d-=c%2*51;System.out.print(d<1?"A":(char)c+"");d=++d%51;}}}