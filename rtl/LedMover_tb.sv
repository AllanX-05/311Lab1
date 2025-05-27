module LedMover_tb;

    logic my_1HzSIM;
    logic [7:0] LEDSIM;

    LedMover leds (.clk(my_1HzSIM), .LED(LEDSIM));

    initial begin
        forever begin
            my_1HzSIM = 0; #5;
            my_1HzSIM = 1; #5;
        end
    end

    initial begin

        #500;
        $stop;

    end

endmodule

