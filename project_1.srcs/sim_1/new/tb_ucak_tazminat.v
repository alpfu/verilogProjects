`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 16:04:30
// Design Name: 
// Module Name: tb_ucak_tazminat
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


module tb_ucak_tazminat();

    reg[1:0] b;
    reg h;
    wire[5:0] t;
    
    ucak_tazminat uut(
        .b(b),
        .h(h),
        .t(t)
    );
    
    initial begin
    b= 2'd2;
    h= 0;
    #50
    b= 2'd3;
    h= 0;
    #50
    b= 2'd3;
    h= 1;
    #50
    b= 2'd1;
    h= 1;
    #50
    b= 2'd0;
    h= 0;
    end
endmodule
