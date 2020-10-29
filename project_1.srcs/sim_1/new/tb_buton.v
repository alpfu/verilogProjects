`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 15:27:11
// Design Name: 
// Module Name: tb_buton
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


module tb_buton();

    reg a, b, c, d;
    wire[2:0] e;
    
    buton uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e)
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
