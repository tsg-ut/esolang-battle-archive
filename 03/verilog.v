`define EOF 32'hFFFF_FFFF
`define STDIN 32'h8000_0000

module cat;
	integer c,i,d;
	initial begin c = $fgetc(`STDIN);
		while (c != `EOF) begin
			d = 0;
			i = 1;
			while ( c == 48 || c == 49)begin
				d = d * 2;
				d = d + c - 48; 
				c = $fgetc(`STDIN);
			end
			i = 1;
			while(d > 0)begin 
				d = d - i;
				i = i + 1;
			end
			if ( d == 0 )begin
				$write("%c\n", "1");
		    end else begin
		    	$write("%c\n", "0");
		    end
			c = $fgetc(`STDIN);

		end
	end
endmodule