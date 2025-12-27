`timescale 1ns/1ps
module alu_tb;

    reg clk;
    reg en;
    reg [2:0] op;
    reg [7:0] a, b;
    wire [7:0] y;
    wire zero;

    alu DUT(.clk(clk), .en(en), .op(op), .a(a), .b(b), .y(y), .zero(zero));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t en=%b op=%b a=%d b=%d y=%d zero=%b",
                  $time,en,op,a,b,y,zero);

        en = 0; a = 0; b = 0; op = 0;
        #20;

        en = 1;
        a = 8'h05; b = 8'h03;

        op = 3'b000; #20;
        op = 3'b001; #20;
        op = 3'b010; #20;
        op = 3'b011; #20;
        op = 3'b100; #20;
        op = 3'b101; #20;
        op = 3'b110; #20;
        op = 3'b111; #20;

        en = 0; #40;

        $finish;
    end

endmodule
