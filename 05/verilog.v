module c;reg[407:0]b=42,c,i,j={51{8'h20}};initial begin
b^=j;c=$fgets(i,1<<31);while($fgets(c,1<<31))$write("%s",i);$write("%s",(c-i)&{51{8'h3F}}|j);end
endmodule