module a;real x,y;initial repeat(50)begin
y=$fscanf(1<<31,"%b",x);
$write("%d",(8*x+1)**0.5%2==1);
end endmodule