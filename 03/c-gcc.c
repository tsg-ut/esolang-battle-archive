#include<stdio.h>
int m(int x) {
    int lb = 0;
    int ub = x;
    while((ub - lb) > 1) {
        int mb = (ub + lb) / 2;
        if (mb * mb > x)ub = mb;
        else lb = mb;
    }
    return lb;
}

int main() {
    char s[9];
    for(int i=0;i<50;i++) {
        scanf("%s", s);
        int x=0;
        for(int j=0; j<8;j++)
        {
         x *= 2; x += (s[j]=='1');
        }
        int y = 1 + 8 * x;
        int z = y!=1 ? m(y):1;
        printf("%d", z * z / y);
    }
    return 0;
}
