module tt_um_byron (
    input  [7:0] io_in,
    output [7:0] io_out
);
    wire [2:0] sel = io_in[7:5];  // bits 7-5 para selección
    wire [2:0] A   = io_in[4:2];  // bits 4-2 para A
    wire [1:0] B   = io_in[1:0];  // bits 1-0 para B

    wire [7:0] result;
    wire cout;
// A y B se extienden a 8 bits
    alu_8bit alu_inst (
        .A({5'b00000, A}),
        .B({6'b000000, B}),
        .sel(sel),
        .Result(result),
        .Cout(cout)
    );

    assign io_out = result;
endmodule
