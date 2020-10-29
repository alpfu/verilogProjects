`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2017 22:02:22
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
    );
    
    wire h1_carry_out, h1_sum;
    wire h2_carry_out;
    
    half_adder h1(.a(a), .b(b), .sum(h1_sum), .carry_out(h1_carry_out));
    half_adder h2(.a(h1_sum), .b(carry_in), .sum(sum), .carry_out(h2_carry_out));
    
    or(carry_out, h1_carry_out, h2_carry_out);
endmodule


