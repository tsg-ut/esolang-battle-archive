s[90];main(p,i,q,r){gets(s);p=strchr(s,84)-(int)s;for(;gets(s),i=p;){r=(int)s;for(;i--;)putchar(32);puts("*");q=strchr(s,75);if(q){for(i=q-r;i--;)putchar(32);for(r+=p-q+1;r--;)putchar(42);break;}}}