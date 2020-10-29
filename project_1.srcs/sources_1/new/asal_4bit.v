`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 15:03:11
// Design Name: 
// Module Name: asal_4bit
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


module asal_4bit(
    input[3:0] a,
    output b
    );
    
    //notlar alinir
    not(a3n, a[3]);
    not(a2n, a[2]);
    not(a1n, a[1]);
    not(a0n, a[0]);
    
    // A a[3] B a[2] C a[1] D a[0]
    wire BnCD ;
    and(BnCD, a2n, a[1], a[0]);
    
    wire AnBnC;
    and(AnBnC, a3n, a2n, a[1]);
    
    wire AnBD;
    and(AnBD, a3n, a[2], a[0]);
    
    wire BCnD;
    and(BCnD, a[2], a1n, a[0]);
    
    or(b, BnCD, AnBnC, AnBD, BCnD); 
    
endmodule
