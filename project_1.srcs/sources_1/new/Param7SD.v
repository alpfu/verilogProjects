`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2017 10:41:16
// Design Name: 
// Module Name: Param7SD
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


module Param7SD #(parameter EKSILECEK_SAYI= 0)(
    input[3:0] baslangic_rakami,
    output reg A, B, C, D, E, F, G,
    output Dp
    );
    
    assign Dp= 0;
    
    reg sonuc;
    
    always@*begin
        
    end
    
    BCDto7SD m1(.bcd(sonuc), .A(A), ); 
endmodule
