`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2017 19:05:55
// Design Name: 
// Module Name: pirana
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


module pirana(
    input nem,
    input isik,
    input ruzgar,
    output gaz //1 oksijen 0 karbondioksit
    );
    
    not(rnot, ruzgar); // ruzgar not
    
    wire nrnot;
    and(nrnot, nem, rnot); //nem*ruzgar'
    
    wire ni; // nem*isik
    and(ni, nem, isik);
    
    wire irn;
    and(irn, isik, rnot); //isik*ruzgar'
    
    or(gaz, nrnot, ni, irn);
endmodule
