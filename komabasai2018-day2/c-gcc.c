char s[99];main(i){for(gets(s);i<51;i++)putchar(s[i-1]&s[i+4]&s[i+11]&s[i+16]|48);}