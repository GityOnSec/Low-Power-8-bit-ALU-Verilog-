module operand_isolation(
    input  wire enable,
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire [7:0] a_iso,
    output wire [7:0] b_iso
);

    assign a_iso = enable ? a : 8'b0;
    assign b_iso = enable ? b : 8'b0;

endmodule
