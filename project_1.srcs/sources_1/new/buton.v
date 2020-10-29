`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2017 15:19:38
// Design Name: 
// Module Name: buton
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


module buton(   //4 kisi butona basýyor. basan kisi sayisini cikti verir
    input a,
    input b, 
    input c,
    input d,
    output[2:0] e    //en fazla 4 kisi basabilir. 3 bit yeterlidir
    );
    
    not(an, a);
    not(bn, b);
    not(cn, c);
    not(dn, d);
    
    and(e[2], a, b, c, d);
    
    wire acd, abc, abd, anbcd, anbncndn;
    or(acd, a, c, d);
    or(abc, a, b, c);
    or(abd, a, b, d);
    or(anbcd, an, b, c, d);
    or(anbncndn, an, bn, cn, dn);
    and(e[1], acd, abc, abd, anbcd, anbncndn);
    
    xor(e[0], a, b, c, d);
    
    
endmodule
