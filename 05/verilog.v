module c;reg[407:0]b={51{8'h20}}^42,c,i;initial begin
c=$fgets(i,1<<31);while($fgets(c,1<<31))$write("%s",i);i^=b;while(!(i&(c^b)))i|=i<<8;$write("%s",i);end
endmodule