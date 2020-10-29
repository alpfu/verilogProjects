`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2017 01:00:31
// Design Name: 
// Module Name: tb_mod3
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


module tb_mod3();

    reg[3:0] a;
    wire[1:0] b;
    
    mod3 uut(
        .a(a),
        .b(b)
    );
    
    initial begin
    a= 4'd0;
    #50
    a= 4'd1;
    #50
    a= 4'd2;
    #50
    a= 4'd3;
    #50
    a= 4'd4;
    #50
    a= 4'd5;
    #50
    a= 4'd6;
    #50
    a= 4'd7;
    #50
    a= 4'd8;
    #50
    a= 4'd9;
    #50
    a= 4'd10;
    #50
    a= 4'd11;
    #50
    a= 4'd12;
    #50
    a= 4'd13;
    #50
    a= 4'd14;
    #50
    a= 4'd15;
    end
endmodule
