module tt_user_module (
    input  [7:0] io_in,
    output [7:0] io_out
);
    wire [3:0] A = io_in[7:4];
    wire [3:0] B = io_in[3:0];
    wire [2:0] sel = io_in[2:0]; // limitado

    wire [7:0] result;
    wire cout;

    alu_8bit alu_inst (
        .A({4'b0000, A}),
        .B({4'b0000, B}),
        .sel(sel),
        .Result(result),
        .Cout(cout)
    );

    assign io_out = result;
endmodule
