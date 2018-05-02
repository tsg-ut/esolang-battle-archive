module m;integer X[0:11],v;initial begin
for(v=0;$fscanf(1<<31,"%d",X[v]);v+=1)X[v]-=v>2?X[v%3]:0;$write(((X[4]*X[8]-X[5]*X[7])*X[9]+(X[5]*X[6]-X[3]*X[8])*X[10]+(X[3]*X[7]-X[4]*X[6])*X[11])/6);end
endmodule