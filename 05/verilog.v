module c;integer b,c,i;initial begin
begin:a
while(1)begin
c=$fgetc(1<<31);$write("%c",c);if(c==8'h54)disable a;end
end
b=0;while(b==0)begin
for(i=0;i<51;i++)begin
if(c==8'h4b)b=1;$write("%c",(c+b-84?c+b:32));c=$fgetc(1<<31);end
$write("+");end
end
endmodule