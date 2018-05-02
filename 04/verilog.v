module m;integer X[0:11],v,s;initial begin
for(v=0;$fscanf(1<<31,"%d",X[v]);v+=1)X[v-3]-=X[v];s=0;for(v=11;v>2;v-=3)s+=X[v-5]*(X[v%9]*X[(v+2)%9]-X[(v-1)%9]*X[(v+3)%9]);$write(s/6);end
endmodule