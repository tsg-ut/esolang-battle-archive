module c;integer b,c,i;initial begin
begin:a
while(1)begin
c=$fgetc(1<<31);if(c==8'h54)disable a;$write("%c",c);end
end
b=0;while(b==0)begin
for(i=0;i<51;i++)begin
$write("%c",(c+b));c=$fgetc(1<<31);if(c==8'h4b)b=1;end
$write("+");end
end
endmodule