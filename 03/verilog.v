module c;integer c,d;initial begin repeat(50)begin for(c=$fscanf(1<<31,"%b",d);d>0;c=c+1)d=d-c;$write(~|d);end end endmodule
