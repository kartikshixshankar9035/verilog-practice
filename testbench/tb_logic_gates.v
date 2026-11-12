module tb_logic_gates;

reg A, B;

wire AND_OUT, OR_OUT, NOT_OUT;
wire NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT;

logic_gates DUT (
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .NOT_OUT(NOT_OUT),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT),
    .XOR_OUT(XOR_OUT),
    .XNOR_OUT(XNOR_OUT)
);

initial begin

    $dumpfile("results/logic_gates.vcd");
    $dumpvars(0, tb_logic_gates);

    $monitor("A=%b B=%b | AND=%b OR=%b NOT=%b XOR=%b",
             A, B, AND_OUT, OR_OUT, NOT_OUT, XOR_OUT);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;

end

endmodule