`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 16:00:03
// Design Name: 
// Module Name: ucak_tazminat
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


module ucak_tazminat(
    input[1:0] b,
    input h,
    output[5:0] t
    );
    
    not(b1n, b[1]);
    not(b0n, b[0]);
    
    assign t[0]= 0;         //dog. tab. gorunuyor
    assign t[1]= 0;            //dog. tab. gorunuyor
    assign t[2]= b[0];              //dog. tab. gorunuyor
    assign t[3]= h;         //dog. tab. gorunuyor
    
    and(t[4], b[1], b0n); // assign kullanmadan karn. map.
    
    wire b1b0;
    and(b1b0, b[1], b[0]);  // kar. map.
    assign t[5]= b1b0;
endmodule
