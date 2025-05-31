module tt_um_byron (
    input  [7:0] io_in,
    output [7:0] io_out
);

    // Mapeo sin solapamiento:
    wire [2:0] sel = io_in[7:5];  // selección de operación
    wire [2:0] A   = io_in[4:2];  // A reducido a 3 bits
    wire [1:0] B   = io_in[1:0];  // B reducido a 2 bits

    wire [7:0] result;
    wire cout;

    // Expandir A y B a 8 bits para la ALU
    alu_8bit alu_inst (
        .A({5'b00000, A}),
        .B({6'b000000, B}),
        .sel(sel),
        .Result(result),
        .Cout(cout)
    );

    assign io_out = result;

endmodule
