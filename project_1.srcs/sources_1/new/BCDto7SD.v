`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2017 10:13:02
// Design Name: 
// Module Name: BCDto7SD
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


module BCDto7SD(
    input[3:0] bcd, 
    output reg A, B, C, D, E, F, G,
    output Dp
    );
    
   assign Dp= 0;
   
   always@*begin
       A= 0;
       B= 0;
       C= 0;
       D= 0;
       E= 0;
       F= 0;
       G= 0;
      
     case(bcd)   
     4'd0: begin
        A= 0;
        B= 0;
        C= 0;
        D= 0;
        E= 0;
        F= 0;
        G= 0;
     end
     4'd1: begin
        A= 0;
        B= 1;
        C= 1;
        D= 0;
        E= 0;
        F= 0;
        G= 0;
     end
     4'd2: begin
        A= 0;
        B= 0;
        C= 0;
        D= 0;
        E= 0;
        F= 0;
        G= 0;
     end
     4'd3: begin
        A= 1;
        B= 1;
        C= 1;
        D= 1;
        E= 0;
        F= 0;
        G= 1;
     end
     4'd4: begin
        A= 0;
        B= 1;
        C= 1;
        D= 0;
        E= 0;
        F= 1;
        G= 1;
     end
     4'd5: begin
        A= 1;
        B= 0;
        C= 1;
        D= 1;
        E= 0;
        F= 1;
        G= 1;
     end
     4'd6: begin
        A= 1;
        B= 0;
        C= 1;
        D= 1;
        E= 1;
        F= 1;
        G= 1;
     end
     4'd7: begin
        A= 1;
        B= 1;
        C= 1;
        D= 0;
        E= 0;
        F= 0;
        G= 0;
     end
     4'd8: begin
        A= 1;
        B= 1;
        C= 1;
        D= 1;
        E= 1;
        F= 1;
        G= 1;
     end
     4'd9: begin
        A= 1;
        B= 1;
        C= 1;
        D= 1;
        E= 0;
        F= 1;
        G= 1;
     end
     endcase
   end 
endmodule
