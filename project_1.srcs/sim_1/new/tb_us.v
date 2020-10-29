`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 22:55:00
// Design Name: 
// Module Name: tb_us
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


module tb_us();

    reg[1:0] a, c;
    reg b;
    wire[4:0] d;

    us uut(
        .a(a),
        .c(c),
        .b(b),
        .d(d)
    );
    
    initial begin
    a= 2'd2;
    c= 2'd1;
    b= 1'd0;
    #50
    a= 2'd3;
    c= 2'd3;
    b= 1'd1;
    #50
    a= 2'd1;
    c= 2'd0;
    b= 1'd1;
    #50  
    a= 2'd2;
    c= 2'd2;
    b= 1'd1; 
    #50
    a= 2'd3;
    c= 2'd2;
    b= 1'd1;
    end  
endmodule
