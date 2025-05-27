module NDivider(inclk, outclk, reset, divisor);
	
	input logic inclk;
	output logic outclk;
	input logic reset;
	input logic [31:0] divisor;
	
	reg [31:0] counter;
	
	// values change depending on rising edge of the input clock
	always_ff @(posedge inclk) begin
	
		// to add put an initial value if needed.
		if (~reset)
			counter <= 32'h0;
			
		// continues counting upwards if still less than the divisor - 1
		else if (counter < divisor - 1)
			counter <= counter + 1;
		
		// if the above condition is no longer met, reset back to zero.
		else 
			counter <= 32'h0;
	end
	
	// this flopflop detects whenever the counter goes back to zero
	// once zero, switch the output from 0 to 1 or 1 to 0.
	always_ff @(posedge inclk) begin
		if (~reset) 
			outclk <= 0;
		else if (counter == 0)
			outclk <= ~outclk;
	end
	
endmodule 