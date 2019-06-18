`define STDIN 32'h8000_0000

module cat;
	integer c, i=0, s=0, e=0, k=0;
	initial begin
		c = $fgetc(`STDIN);
		while (c != -1) begin
			if(c[4]) begin
				s = i;
			end else if(c[6]) begin
				e = i;
			end
			i += 1;
			c = $fgetc(`STDIN);
		end
		for(i=0; i<=e/51; i++) begin
			for(c=0; c<51; c++) begin
				if(c==s%51||(i==e/51&&c>=e%51&&c<=s%51)) begin
					k = 8'h2a;
				end else begin
					k = 8'h20;
				end
				$write("%c", k);
			end
			$write("%c", 8'h0a);
		end
	end
endmodule