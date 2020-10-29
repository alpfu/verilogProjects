`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 10:29:26
// Design Name: 
// Module Name: tb_multiplier
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


module tb_multiplier();

    reg[1:0] num1, num2;
    wire[3:0] result;
    
    multiplier uut(
        .num1(num1),
        .num2(num2),
        .result(result)
    );
    
    initial begin
    num1= 2'd3;
    num2= 2'd3;
    #50
    num1= 2'd2;
    num2= 2'd1;
    #50
    num1= 2'd1;
    num2= 2'd0;
    end
endmodule