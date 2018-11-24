char s[99];
main(i){
gets(s);
for(i=0;i<50;i++)putchar(s[i]&s[i+5]&s[i+12]&s[i+17]&1|48);
}