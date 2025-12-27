module clk_gate(
    input  wire clk,
    input  wire enable,
    output wire gated_clk
);

    reg latch;

    always @ (clk or enable) begin
        if (!clk)
            latch = enable;
    end

    assign gated_clk = clk & latch;

endmodule
