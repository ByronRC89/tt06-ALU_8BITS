module user_project_wrapper (
    input  wire [7:0] io_in,
    output wire [7:0] io_out,
    input  wire       clk,
    input  wire       ena,
    input  wire       rst_n
);

    tt_um_byron dut (
        .io_in(io_in),
        .io_out(io_out),
        .clk(clk),
        .ena(ena),
        .rst_n(rst_n)
    );

endmodule
