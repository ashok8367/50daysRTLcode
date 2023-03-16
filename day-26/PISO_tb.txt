module piso_reg_tb();
reg [3:0]d;
reg clk,sl;
wire q;
piso_reg d1(d, clk, sl, q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
sl=0;d=4'b1011;
#10 sl=1;
#10 sl=1;
#10 sl=1;
#10 sl=0;d=4'b0000;
#100 $finish;
end 
endmodule
