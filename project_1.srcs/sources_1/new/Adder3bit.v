`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2017 22:27:21
// Design Name: 
// Module Name: Adder3bit
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


module Adder3bit(
    input[2:0] sayi1,
    input[2:0] sayi2,
    output[3:0] toplam
    );
    
    // ilk basamak
    wire h1_c_out;
    half_adder h1(.a(sayi1[0]), .b(sayi2[0]), .carry_out(h1_c_out), .sum(toplam[0]));
    // ikinci basamak
    wire f1_c_out;
    full_adder f1(.a(sayi1[1]), .b(sayi2[1]), .carry_in(h1_c_out), .carry_out(f1_c_out), .sum(toplam[1]));
    //ucuncu basamak
    wire f2_c_out;
    full_adder f2(.a(sayi1[2]), .b(sayi2[2]), .carry_in(f1_c_out), .carry_out(f2_c_out), .sum(toplam[2]));
    //dorduncu basamak
    assign toplam[3]= f2_c_out;
endmodule