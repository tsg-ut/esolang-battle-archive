Scanner scan = new Scanner(System.in);
String s = scan.nextLine()

int[] a = new int[100];
for (int i = 0; i < 55; i++) {
	a[i]=0;
}

for(int k=0;k<100;k++){
  for (int i = 49; i >=0; i--) {
	a[i] *= 2;
	a[i+1] += a[i] / 10;
	a[i] %= 10;
  }
  if(s[k]=='1')a[0]+=1;
}
for (int i = 49; i >=0; i--) {
	int p = a[i];
	print "$p";
}