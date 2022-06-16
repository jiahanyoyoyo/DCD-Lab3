module t_Lab3_Sequence_Recognizer();

reg x,clock,reset;
wire z;

Lab3_Sequence_Recognizer_structure struture(x,clock,reset,z);
Lab3_Sequence_Recognizer_state_diagram state(x,clock,reset,z);

initial begin
	$dumpfile("Lab3_Sequence_Recognizer.vcd");
	$dumpvars;
end

initial begin
	x=1'b0;reset=1'b0;clock=1'b0;
#40 x=1'b0;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b1;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b1;reset=1'b1;
#40 x=1'b1;reset=1'b1;
#40 x=1'b1;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b1;reset=1'b1;
#40 x=1'b0;reset=1'b1; 
#40 x=1'b1;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b1;reset=1'b1;
#40 x=1'b0;reset=1'b1;
#40 x=1'b1;reset=1'b0;
end

initial #700 $finish; 

always #20 clock=~clock;

endmodule





