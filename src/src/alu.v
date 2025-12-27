module alu (
    input  wire        clk,
    input  wire        en,
    input  wire [2:0]  op,
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output reg  [7:0]  y,
    output reg         zero
);

    wire gclk;
    wire [7:0] a_iso, b_iso;

    clk_gate CG(.clk(clk), .enable(en), .gated_clk(gclk));
    operand_isolation OI(.enable(en), .a(a), .b(b),
                         .a_iso(a_iso), .b_iso(b_iso));

    always @(posedge gclk) begin
        case(op)
            3'b000: y <= a_iso + b_iso;
            3'b001: y <= a_iso - b_iso;
            3'b010: y <= a_iso & b_iso;
            3'b011: y <= a_iso | b_iso;
            3'b100: y <= a_iso ^ b_iso;
            3'b101: y <= ~a_iso;
            3'b110: y <= a_iso << 1;
            3'b111: y <= a_iso >> 1;
        endcase

        zero <= (y == 8'b0);
    end

endmodule
