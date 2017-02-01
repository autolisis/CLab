module cirmod(gl, al, gr, ar, gout, aout);

input gl, al, gr, ar;
output gout, aout;

assign gout = gl | gl & ar;
assign aout = al & ar;

endmodule
