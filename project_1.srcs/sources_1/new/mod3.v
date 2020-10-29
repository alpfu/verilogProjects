`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2017 00:50:45
// Design Name: 
// Module Name: mod3
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


module mod3(               // 4-bit sayinin mod 3 u
    input[3:0] a,
    output[1:0] b
    );
    
    //tum bitlerin not i
    not(a3n, a[3]);
    not(a2n, a[2]);
    not(a1n, a[1]);
    not(a0n, a[0]);
    
    //b[1] icin minitermler ile sonuc
    wire m2, m5, m8, m11, m14;
    and(m2, a3n, a2n, a[1], a0n); // 0010
    and(m5, a3n, a[2], a1n, a[0]); // 0101
    and(m8, a[3], a2n, a1n, a0n); // 1000
    and(m11, a[3], a2n, a[1], a[0]); // 1011
    and(m14, a[3], a[2], a[1], a0n); // 1110
    or(b[1], m2, m5, m8, m11, m14);
    
    //b[0] icin minitermler ile sonuc
    wire m1, m4, m7, m10, m13;
    and(m1, a3n, a2n, a1n, a[0]); // 0001
    and(m4, a3n, a[2], a1n, a0n); // 0100
    and(m7, a3n, a[2], a[1], a[0]); // 0111
    and(m10, a[3], a2n, a[1], a0n); // 1010
    and(m13, a[3], a[2], a1n, a[0]); // 1101
    or(b[0], m1, m4, m7, m10, m13);
    
endmodule
