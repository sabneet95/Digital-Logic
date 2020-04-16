module fulladder
(
 input x,
 input y,
 input cin,
 
 output sum,
 output cout
 );
 
assign {cout, sum} =  cin + y + x;
 
endmodule