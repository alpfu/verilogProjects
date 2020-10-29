`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 15:43:39
// Design Name: 
// Module Name: ucak_yolcu
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


module ucak_yolcu(
    input a, b, c, d,
    output[1:0] bek,
    output k
    );
    
    not(an, a);
    not(bn, b);
    not(cn, c);
    not(dn, d);

    or(k, a, b, c, d);
    
    wire b1, b2;
    or(b1, a, b, c, d);
    or(b2, an, bn, cn, dn);
    and(bek[1], b1, b2);
    
    wire b01, b02, b03, b04, b05;
    or(b01, a, b, c, d);
    or(b02, bn, cn, dn);
    or(b03, an, bn, dn);
    or(b04, an, bn, cn);
    or(b05, an, cn, dn);
    and(bek[0], b01, b02, b03, b04, b05);
    
endmodule
