module mod_tb;
reg clk,rst,x,y,z;
wire [3:0]q,qb;

mod m1(clk,rst,q,qb);

initial
begin
clk=1'b1;
forever #5 clk=~clk;
end

initial
begin
rst=1'b1;
#10;

rst=1'b0;

end
initial  #300 $finish;
endmodule
