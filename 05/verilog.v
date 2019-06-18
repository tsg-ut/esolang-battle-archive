module c;integer b=0,c=0,i;initial begin
while(c-84)begin
$write("%c",c);c=$fgetc(1<<31);end
while(!b)begin
for(i=0;i<51;i++)begin
$write("%c",c+b);c=$fgetc(1<<31);if(c==75)b=1;end
$write("+");end
end
endmodule