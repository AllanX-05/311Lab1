
`timescale 1ns/1ps

module ToneOrgan_tb;

    logic clkSIM;
    logic [2:0] selDo, selRe, selMi, selFa, selSo, selLa, selSi, selDO;
    logic resetSIM;
    logic outclkDo, outclkRe, outclkMi, outclkFa, outclkSo, outclkLa, outclkSi, outclkDO;

    ToneOrgan testOrganDo (.sel(selDo[2:0]), .inclk(clkSIM), .outclk(outclkDo), .reset(resetSIM));
    ToneOrgan testOrganRe (.sel(selRe[2:0]), .inclk(clkSIM), .outclk(outclkRe), .reset(resetSIM));
    ToneOrgan testOrganMi (.sel(selMi[2:0]), .inclk(clkSIM), .outclk(outclkMi), .reset(resetSIM));
    ToneOrgan testOrganFa (.sel(selFa[2:0]), .inclk(clkSIM), .outclk(outclkFa), .reset(resetSIM));
    ToneOrgan testOrganSo (.sel(selSo[2:0]), .inclk(clkSIM), .outclk(outclkSo), .reset(resetSIM));
    ToneOrgan testOrganLa (.sel(selLa[2:0]), .inclk(clkSIM), .outclk(outclkLa), .reset(resetSIM));
    ToneOrgan testOrganSi (.sel(selSi[2:0]), .inclk(clkSIM), .outclk(outclkSi), .reset(resetSIM));
    ToneOrgan testOrganDO (.sel(selDO[2:0]), .inclk(clkSIM), .outclk(outclkDO), .reset(resetSIM));


    initial begin
        forever begin
            clkSIM = 0; #10;
            clkSIM = 1; #10;
        end
    end

    initial begin

        selDo = 3'b000;
        selRe = 3'b001;
        selMi = 3'b010;
        selFa = 3'b011;
        selSo = 3'b100;
        selLa = 3'b101;
        selSi = 3'b110;
        selDO = 3'b111;

        resetSIM = 1'b0; #20;
        resetSIM = 1'b1;

        #8000000;
        $stop;

    end

endmodule

