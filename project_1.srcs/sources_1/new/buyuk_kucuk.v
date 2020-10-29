`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 23:27:54
// Design Name: 
// Module Name: buyuk_kucuk
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


module buyuk_kucuk(     // iki sayidan kucuk olani çýktý verir
    input[1:0] a,
    input[1:0] b,
    output[1:0] c
    );
    
    //tum bitlerin notlari
    not(a1n, a[1]);
    not(a0n, a[0]);
    not(b1n, b[1]);
    not(b0n, b[0]);
    
    //c[0] in verileri
    wire m5, m6, m7, m9, m13, m15;
    and(m5, a1n, a[0], b1n, b[0]); //5=0101
    and(m6, a1n, a[0], b[1], b0n); //6=0110
    and(m7, a1n, a[0], b[1], b[0]); //7=0111
    and(m9, a[1], a0n, b1n, b[0]); //9=1001
    and(m13, a[1], a[0], b1n, b[0]); //13=1101
    and(m15, a[1], a[0], b[1], b[0]); //15=1111
    or(c[0], m5, m6, m7, m9, m13, m15);
    
    //c[1] in verileri
    wire m10, m11, m14;
    and(m10, a[1], a0n, b[1], b0n); //10=1010
    and(m11, a[1], a0n, b[1], b[0]); //9=1011
    and(m14, a[1], a[0], b[1], b0n); //9=1110
    or(c[1], m10, m11, m14, m15);
endmodule
