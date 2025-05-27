`timescale 1ns/1ps

module NDivider_tb;

    logic clkSIM;
    logic outclk2, outclk3, outclk4;
    logic [31:0] divisor2, divisor3, divisor4;
    logic resetSIM;

    NDivider divider_by_2 (.inclk(clkSIM), .outclk(outclk2), .reset(resetSIM), .divisor(divisor2));
    NDivider divider_by_3 (.inclk(clkSIM), .outclk(outclk3), .reset(resetSIM), .divisor(divisor3));
    NDivider divider_by_4 (.inclk(clkSIM), .outclk(outclk4), .reset(resetSIM), .divisor(divisor4));

    initial begin
        forever begin
            clkSIM = 0; #10;
            clkSIM = 1; #10;
        end
    end

    initial begin

        resetSIM = 1'b0; #20;
        resetSIM = 1'b1;

        divisor2 = 32'd2;
        divisor3 = 32'd3;
        divisor4 = 32'd4;

        #500;
        
        $stop;

    end

endmodule

