module c;integer c,i=0,s=0,e=0;initial begin
c=$fgetc(1<<31);for(i=0;c+1;i++)begin if(c[4])s=i;if(c[6])e=i;c=$fgetc(1<<31);end
for(i=0;i<=e/51;i++)begin
for(c=0;c<51;c++)begin
if(c==s%51||(i==e/51&&c>=e%51&&c<=s%51)) $write("*");else $write(" ");end
$write("\n");end
end
endmodule