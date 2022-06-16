module t_Lab3_NE_Dff_gatelevel();

wire Q,Qb;
reg D,clock;

Lab3_NE_Dff_gatelevel ff1(D,clock,Q,Qb);



initial begin 
	D=1'b0;clock=1'b0;
#55 D=1'b1;
#42 D=1'b0;
#40 D=1'b1;
#28 D=1'b0;
#30 D=1'b1;
#60 D=1'b0;
end

initial #300 $finish;

initial begin
	$dumpfile("Lab3_NE_Dff_gatelevel.vcd");
	$dumpvars;
end

always #20 clock=~clock;
endmodule
