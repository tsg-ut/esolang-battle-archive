module a;
	integer i,j,x,c;
	initial begin
		for (i=0;i<50;i=i+1) begin
			c = $fscanf(32'h8000_0000,"%b",x);
			for(j=0;j<=x;j=j+1) begin
				if (j*(j+1)/2==x) begin
					c = 0;
				end
			end
			$write("%d",1-c);
		end
	end
endmodule
