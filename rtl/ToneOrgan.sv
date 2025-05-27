module ToneOrgan (sel, inclk, outclk, reset);
	input logic [2:0] sel;
	input logic inclk;
	input logic reset;
	output logic outclk;
	
	logic [31:0] divisor;
	
	// Case statement to select which tone/frequency to output.
	// sel is switches [3:1] on the fpga.
	always_comb begin
		case (sel)
			3'b000: divisor = 32'd47801; // do
			3'b001: divisor = 32'd42589; // re
			3'b010: divisor = 32'd37936; // mi
			3'b011: divisor = 32'd35816; // fa
			3'b100: divisor = 32'd31928; // so
			3'b101: divisor = 32'd28409; // la
			3'b110: divisor = 32'd25329; // si
			3'b111: divisor = 32'd23900; // DO
			default: divisor = 32'd47801; // do
		endcase
	end
	
	// Instantiated clock divider module with divisor input from case statement.
	NDivider toneDivider (.inclk(inclk), .outclk(outclk), .reset(reset), .divisor(divisor));
	
	
endmodule 