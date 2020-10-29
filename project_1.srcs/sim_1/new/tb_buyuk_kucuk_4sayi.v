`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2017 00:23:18
// Design Name: 
// Module Name: tb_buyuk_kucuk_4sayi
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


module tb_buyuk_kucuk_4sayi();
    
    reg[1:0] a2, b2, c2, d2;
    wire[1:0] e2;
    
    buyuk_kucuk_4sayi uut(
        .a2(a2),
        .b2(b2),
        .c2(c2),
        .d2(d2),
        .e2(e2)
    );
    
    initial begin
    a2= 2'd0;
    b2= 2'd1;
    c2= 2'd2;
    d2= 2'd3;
    #50
    a2= 2'd2;
    b2= 2'd3;
    c2= 2'd1;
    d2= 2'd1;
    #50
    a2= 2'd3;
    b2= 2'd3;
    c2= 2'd2;
    d2= 2'd1;
    #50
    a2= 2'd2;
    b2= 2'd3;
    c2= 2'd3;
    d2= 2'd3;
    end
endmodule
