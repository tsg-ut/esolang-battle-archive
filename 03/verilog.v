module cat;integer c,i,d,s;initial begin s=1<<31; c=$fgetc(s);while(!(&c))begin d=0;i=1;while(c!=10)begin d=d*2;d=d+c-48;c=$fgetc(s);end i=1;while(d>0)begin d=d-i;i=i+1;end if(d==0)begin $write("%d ",1);end else begin $write("%d ",0);end c=$fgetc(s);end end endmodule