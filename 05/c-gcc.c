x;main(c){for(;~(c=getchar());)putchar(c|=c&4?x=0:(x=++x%51-c%2*51)<1);}