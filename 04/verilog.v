module z;time a,b,c,d,e,f,g,h,i,j,k,l,z;initial begin z=$fscanf(1<<31,"%d%d%d%d%d%d%d%d%d%d%d%d",a,b,c,d,e,f,g,h,i,j,k,l);d-=a;e-=b;f-=c;g-=a;h-=b;i-=c;j-=a;k-=b;l-=c;$write((g*k*f+j*e*i+d*h*l-j*h*f-d*k*i-g*e*l)/6);end endmodule