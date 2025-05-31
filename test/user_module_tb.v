module user_module_tb;
    reg [7:0] io_in;
    wire [7:0] io_out;

    user_module dut (
        .io_in(io_in),
        .io_out(io_out)
    );

    initial begin
        $display("Test ALU 8-bit TinyTapeout");
        io_in = 8'b00010010; #10; // A = 1, B = 2
        $display("Result: %b", io_out);

        io_in = 8'b00100010; #10; // A = 2, B = 2
        $display("Result: %b", io_out);

        $finish;
    end
endmodule
