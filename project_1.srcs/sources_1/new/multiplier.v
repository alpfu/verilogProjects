`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 10:18:41
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [1:0] num1,
    input [1:0] num2,
    output[3:0] result
    );
    
    wire n10n20;
    and(n10n20, num1[0], num2[0]);
    
    wire n11n20;
    and(n11n20, num1[1], num2[0]);
    
    wire n10n21;
    and(n10n21, num1[0], num2[1]);
    
    wire n11n21;
    and(n11n21, num1[1], num2[1]);
    
    assign result[0]= n10n20;
    
    wire h1_c_out;
    half_adder h1(.a(n11n20), .b(n10n21), .sum(result[1]), .carry_out(h1_c_out));
    
    half_adder h2(.a(n11n21), .b(h1_c_out), .sum(result[2]), .carry_out(result[3]));
endmodule
