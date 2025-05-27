module LedMover (
	input logic clk,
	output logic [7:0] LED
);

// logic for when LED is travelling left or right. 
// "1" represents travelling left, and "0" represents right.
logic ledDir;

// state machine logic for led to traverse left and right.
always @(posedge clk) begin
	case ({ledDir,LED})
		9'b1_0000_0001: {ledDir,LED} = 9'b1_0000_0010;
		9'b1_0000_0010: {ledDir,LED} = 9'b1_0000_0100;
		9'b1_0000_0100: {ledDir,LED} = 9'b1_0000_1000;
		9'b1_0000_1000: {ledDir,LED} = 9'b1_0001_0000;
		9'b1_0001_0000: {ledDir,LED} = 9'b1_0010_0000;
		9'b1_0010_0000: {ledDir,LED} = 9'b1_0100_0000;
		9'b1_0100_0000: {ledDir,LED} = 9'b1_1000_0000;
		9'b1_1000_0000: {ledDir,LED} = 9'b0_0100_0000;
		9'b0_0100_0000: {ledDir,LED} = 9'b0_0010_0000;
		9'b0_0010_0000: {ledDir,LED} = 9'b0_0001_0000;
		9'b0_0001_0000: {ledDir,LED} = 9'b0_0000_1000;
		9'b0_0000_1000: {ledDir,LED} = 9'b0_0000_0100;
		9'b0_0000_0100: {ledDir,LED} = 9'b0_0000_0010;
		9'b0_0000_0010: {ledDir,LED} = 9'b1_0000_0001;
		default: {ledDir,LED} = 9'b1_0000_0001;
	endcase
end

endmodule 