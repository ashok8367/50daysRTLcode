module dlatch_tb;

	// Inputs
	reg d;
	reg clock;

	// Bidirs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	d_latch uut (
		.d(d), 
		.clock(clock), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clock = 0;

	end
	
	always #10 d=~d;
	always #5 clock=~clock;
	
	initial
	begin
	$monitor("D=%b | Clock=%b | Output =%b",d,clock,q);
	#200 $finish;
	end
      
endmodule
