y,z;main(){int a[z=12];for(;z--;)scanf("%d",a+z);for(z=9;z--;)a[z]-=a[9+z%3];printf("%d",(a[3]*a[7]*a[2]+a[6]*a[1]*a[5]+a[0]*a[4]*a[8]-a[6]*a[4]*a[2]-a[0]*a[7]*a[5]-a[3]*a[1]*a[8])/6);}