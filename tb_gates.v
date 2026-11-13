module tb_gates;
reg a, b;
wire y_and,y_or,y_not;
wire y_nand,y_xor,y_nor,y_xnor;
integer pass_count;
integer fail_count;
logic_gates DUT(
    .a(a),
    .b(b),
    .y_and(y_and),
    .y_or(y_or),
    .y_not(y_not),
    .y_xor(y_xor),
    .y_nor(y_nor),
    .y_xnor(y_xnor),
    .y_nand(y_nand)
);

initial begin
    pass_count = 0;
fail_count = 0;
    $dumpfile("gates.vcd");
$dumpvars(0, tb_gates);
    $monitor("A=%b B=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
a, b, y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor);
a=0;
b=0;
#10;
       if (y_and==0)begin
       $display("AND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("AND fail");
       fail_count=fail_count+1;
       end

a = 1;
b = 0;
#10;
if (y_and==0)begin
       $display("AND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("AND fail");
       fail_count=fail_count+1;
       end
a=0;
b=1;
#10;
if (y_and==0)begin
       $display("AND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("AND fail");
       fail_count=fail_count+1;
       end

a=1;
b=1;
#10;
if (y_and==1)begin
       $display("AND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("AND fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 0;
#10;

if (y_nand==1)begin
       $display("NAND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NAND fail");
       fail_count=fail_count+1;
       end

a=0;
b=1;
#10;
if (y_nand==1)begin
       $display("NAND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NAND fail");
       fail_count=fail_count+1;
       end

a=1;
b=0;
#10;
if (y_nand==1)begin
       $display("NAND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NAND fail");
       fail_count=fail_count+1;
       end

a=1;
b=1;
#10;
if (y_nand==0)begin
       $display("NAND PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NAND fail");
       fail_count=fail_count+1;
       end

a = 0;
b = 0;
#10;

if (y_or==0)begin
       $display("OR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("OR fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 1;
#10;

if (y_or==1)begin
       $display("OR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("OR fail");
       fail_count=fail_count+1;
       end

a = 1;
b = 0;
#10;

if (y_or==1)begin
       $display("OR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("OR fail");
       fail_count=fail_count+1;
       end
a = 1;
b = 1;
#10;

if (y_or==1)begin
       $display("OR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("OR fail");
       fail_count=fail_count+1;
       end
a = 0;
#10;

if (y_not==1)begin
       $display("NOT PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NOT fail");
       fail_count=fail_count+1;
       end
a = 1;
#10;

if (y_not==0)begin
       $display("NOT PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NOT fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 0;
#10;

if (y_xor==0)begin
       $display("XOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XOR fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 1;
#10;

if (y_xor==1)begin
       $display("XOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XOR fail");
       fail_count=fail_count+1;
       end
a = 1;
b = 0;
#10;

if (y_xor==1)begin
       $display("XOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XOR fail");
       fail_count=fail_count+1;
       end

a = 1;
b = 1;
#10;

if (y_xor==0)begin
       $display("XOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XOR fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 0;
#10;

if (y_nor==1)begin
       $display("NOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NOR fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 1;
#10;

if (y_nor==0)begin
       $display("NOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NOR fail");
       fail_count=fail_count+1;
       end
a = 1;
b = 0;
#10;
if (y_nor==0)begin
       $display("NOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NOR fail");
       fail_count=fail_count+1;
       end
a = 1;
b = 1;
#10;
if (y_nor==0)begin
       $display("NOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("NOR fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 0;
#10;

if (y_xnor==1)begin
       $display("XNOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XNOR fail");
       fail_count=fail_count+1;
       end
a = 0;
b = 1;
#10;
if (y_xnor==0)begin
       $display("XNOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XNOR fail");
       fail_count=fail_count+1;
       end
a = 1;
b = 0;
#10;

if (y_xnor==0)begin
       $display("XNOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XNOR fail");
       fail_count=fail_count+1;
       end
a = 1;
b = 1;
#10;

if (y_xnor==1)begin
       $display("XNOR PASS");
       pass_count=pass_count+1;
end
       else begin
       $display("XNOR fail");
       fail_count=fail_count+1;
       end
$display("----------------------");
$display("TOTAL PASS = %0d", pass_count);
$display("TOTAL FAIL = %0d", fail_count);
$display("----------------------");

$finish;
end
endmodule

