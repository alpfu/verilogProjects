`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 15:49:44
// Design Name: 
// Module Name: tb_ucak_yolcu
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


module tb_ucak_yolcu();

    reg a, b, c, d;
    wire[1:0] bek;
    wire k;
    
    ucak_yolcu uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .bek(bek),
        .k(k)
    );
    
    initial begin
    a= 1'd0;
    b= 1'd0;
    c= 1'd0;
    d= 1'd0;
    #50
    a= 1'd1;
    b= 1'd0;
    c= 1'd0;
    d= 1'd0;
    #50
    a= 1'd1;
    b= 1'd1;
    c= 1'd0;
    d= 1'd0;
    #50
    a= 1'd1;
    b= 1'd1;
    c= 1'd1;
    d= 1'd0;
    #50
    a= 1'd1;
    b= 1'd1;
    c= 1'd1;
    d= 1'd1;
    end
endmodule
