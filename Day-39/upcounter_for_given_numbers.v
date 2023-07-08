module tff(t,clk,rst,q,qb);
input clk,rst,t;
output reg q;
output qb;

always@(posedge clk)
begin
if(rst)
q=0;
else if(t==0)
q=q;
else
q=~q;
end

assign qb=~q;

endmodule

module mod(clk,rst,q,qb);
input clk,rst;
output [3:0]q,qb;
wire x,y,z;
 
 
 assign x=(q[3]&~q[2])|(q[1]&~q[0])|(~q[0]&~q[3])|(q[3]&q[2]&q[1]);
 assign y=(q[2]&~q[1])|(q[2]&q[0])|(~q[3]&~q[1]&q[0]);
 assign z=(q[3]&~q[2])|(q[1]&q[0]);
 
tff t0(x,clk,rst,q[0],qb[0]);
tff t1(y,clk,rst,q[1],qb[1]);
tff t2(z,clk,rst,q[2],qb[2]);
tff t3((q[0]&q[2]),clk,rst,q[3],qb[3]);

endmodule
