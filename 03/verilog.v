module c;integer c,d,s;initial begin s=1<<31;c=$fgetc(s);while(!(&c))begin d=0;while(c!=10)begin d=d*2;d=d+c-48;c=$fgetc(s);end c=1;while(d>0)begin d=d-c;c=c+1;end if(d)begin $write("0 ");end else begin $write("1 ");end c=$fgetc(s);end end endmodule