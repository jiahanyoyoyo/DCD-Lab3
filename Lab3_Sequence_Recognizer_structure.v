module Lab3_Sequence_Recognizer_structure (input x, clock, reset, output z);

wire [2:0]ff;
wire D1,D2,D3;

assign D1=((ff[2]&~x)|(~ff[0]&x)|(ff[1]&ff[0]&~x));
assign D2=((ff[1]&~x)|(ff[0]&x)|(ff[2]&ff[0])|(ff[2]&ff[1]));
assign D3=((~ff[2]&~ff[0]&~x)|(ff[2]&~ff[1]&~ff[0]&~x)|(~ff[2]&~ff[1]&ff[0]&~x));

assign z=~ff[2]&ff[1]&~ff[0]&~x;

D_ff_AR ffA(D1,clock,reset,ff[2]);
D_ff_AR ffB(D2,clock,reset,ff[1]);
D_ff_AR ffC(D3,clock,reset,ff[0]);

endmodule