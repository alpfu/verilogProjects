`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 23:39:03
// Design Name: 
// Module Name: tb_buyuk_kucuk
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


module tb_buyuk_kucuk();

    reg[1:0] a, b;
    wire[1:0] c;
    
    buyuk_kucuk uut(
        .a(a),
        .b(b),
        .c(c)
    );
    
    initial begin
    a= 2'd3;
    b= 2'd3;
    #50
    a= 2'd3;
    b= 2'd2;
    #50
    a= 2'd1;
    b= 2'd3;
    #50
    a= 2'd2;
    b= 2'd2;
    end
endmodule
