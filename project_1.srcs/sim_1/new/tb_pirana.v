`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2017 19:11:22
// Design Name: 
// Module Name: tb_pirana
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


module tb_pirana();

    reg nem;
    reg isik;
    reg ruzgar;
    wire gaz;
    
    pirana uut(
        .nem(nem),
        .isik(isik),
        .ruzgar(ruzgar),
        .gaz(gaz)
    );
    
    initial begin
    nem= 1'd0;
    isik= 1'd0;
    ruzgar= 1'd0;
    #50
    nem= 1'd0;
    isik= 1'd0;
    ruzgar= 1'd1;
    #50
    nem= 1'd0;
    isik= 1'd1;
    ruzgar= 1'd0;
    #50
    nem= 1'd0;
    isik= 1'd1;
    ruzgar= 1'd1;
    #50
    nem= 1'd1;
    isik= 1'd0;
    ruzgar= 1'd0;
    #50
    nem= 1'd1;
    isik= 1'd0;
    ruzgar= 1'd1;
    #50
    nem= 1'd1;
    isik= 1'd1;
    ruzgar= 1'd0;
    #50
    nem= 1'd1;
    isik= 1'd1;
    ruzgar= 1'd1;
    end
endmodule
