module Lab3_NE_Dff_gatelevel(input D, clock, output Q, Qb);

wire s1,r1,r2,a;

Lab3_SR_Latch_gatelevel sr1(clock,r1,a,r2);
Lab3_SR_Latch_gatelevel sr2(s1,r2,Q,Qb);

nor #10 g1(r1,s1,D);
nor #10 g2(s1,r2,r1,clock);

endmodule