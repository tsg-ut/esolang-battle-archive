module a;integer i,j,x,c;initial repeat(50)begin c=$fscanf(2147483648,"%b",x);for(j=0;j<=x;j=j+1)c=c+(j*(j+1)/2==x);$write("%d",c-1);end endmodule
