module m;integer X[0:11],v,s;initial begin
for(v=0;$fscanf(1<<31,"%d",X[v]);v+=1)X[v]-=v>2?X[v%3]:0;for(s=0;v>9;v-=1)s+=X[v-1]*(X[v%3+3]*X[(v+1)%3+6]-X[v%3+6]*X[(v+1)%3+3]);$write(s/6);end
endmodule