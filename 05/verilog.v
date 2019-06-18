module c;reg[407:0]b=(1<<405)+10,c,i;initial begin
for(i=49;i!=0;i--)b|=b>>8;c=$fgets(i,1<<31);while($fgets(c,1<<31))$write("%s",i);i^=b;c^=b;while(!(i&c))i|=i<<8;$write("%s",i);end
endmodule