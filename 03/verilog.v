module c;integer c,d,s;initial begin s=1<<31;repeat(50)begin d=0;c=48;repeat(9)begin d=d*2+c-48;c=$fgetc(s);end for(c=1;d>0;c=c+1)d=d-c;$write("%d ",~|d);end end endmodule
