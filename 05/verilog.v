module c;reg[407:0]c,i;initial begin
c=$fgets(i,1<<31);while($fgets(c,1<<31))$write("%s",i);$write("%s",c-i&{99{4'h7}}|{51{8'h20}});end
endmodule