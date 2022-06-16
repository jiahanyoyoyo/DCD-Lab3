module Lab3_SR_Latch_gatelevel (input S, R, output Q, Qb);

nor #10 q1(Q,R,Qb);
nor #10 q2(Qb,S,Q);

endmodule