`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 15:12:11
// Design Name: 
// Module Name: tb_asal_4bit
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


module tb_asal_4bit();

    reg[3:0] a;
    wire b;
    
    asal_4bit uut(
        .a(a),
        .b(b)
    );
    
    initial begin
    a= 4'd0;
    #50
    a= 4'd2;
    #50
    a= 4'd4;
    #50
    a= 4'd5;
    #50
    a= 4'd6;
    #50
    a= 4'd7;
    #50
    a= 4'd15;
    #50
    a= 4'd13;
    #50
    a= 4'd11;
    #50
    a= 4'd12;    
    end
endmodule
