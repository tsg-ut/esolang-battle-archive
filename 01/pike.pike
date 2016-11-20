int main() {
	string s=Stdio.stdin.gets();
	int i=strlen(s);
	int res=0;
	int j=i-1;
	while(j>=0){
    if(s[j]==49){
	res= res+pow(2,i-j-1);
	}
	j = j-1;
	}
	write("%d\n",res);
    return 0;
}