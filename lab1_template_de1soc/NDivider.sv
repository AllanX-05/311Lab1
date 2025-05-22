module NDivider(inclk, outclk, reset, sel);
	
	input logic inclk;
	output logic outclk;
	input logic reset;
	input logic [2:0] sel;
	
	wire [31:0] divisor;
	
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
	
	reg [31:0] counter;
	
	always_ff @(posedge inclk) begin
		if (~reset)
			counter <= 32'h0;
		else if (counter <= divisor)
			counter <= counter + 1;
		else 
			counter <= 32'h0;
	
	end
	
	always_ff @(posedge inclk) begin
		if (counter == 0)
			outclk <= ~outclk;
	end
	
endmodule 