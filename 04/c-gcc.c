a[12];s,q;main(p,z){z=12;for(;z--;)scanf("%d",a+z);for(z=9;z--;)a[z]-=a[9+z%3];for(z=3;z--;)s+=a[z]*=a[p=3+-~z%3]*a[q=6+(z+2)%3]-a[q-3]*a[p+3];printf("%d",s/6);}