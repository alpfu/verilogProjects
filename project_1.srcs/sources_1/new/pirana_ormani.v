`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2017 19:24:47
// Design Name: 
// Module Name: pirana_ormani
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


module pirana_ormani(
    input o[6:0], // 7-bit 7 eleman var ya o2 ya c02 uretir
    output[2:0] g     // 3 bit 7 elemanin max toplami 7 olabilir o da 111
    );
    
    wire s65, c65;
    half_adder h1(.a(o[6]), .b(o[5]), .sum(s65), .carry_out(c65));
    
    wire[2:0] s1;
    assign s1[0]= s65;
    assign s1[1]= c65;
    assign s1[2]= 0;
    
    wire s43, c43;
    half_adder h2(.a(o[4]), .b(o[3]), .sum(s43), .carry_out(c43));
    
    wire[2:0] s2;
    assign s2[0]= s43;
    assign s2[1]= c43;
    assign s2[2]= 0;
    
    wire s21, c21;
    half_adder h2(.a(o[2]), .b(o[1]), .sum(s21), .carry_out(c21));
    
    wire s210, c210;
    full_adder f1(.a(s21), .b(o[0]), .carry_in(c21), .sum(s210), .carry_out(c210));
    
    wire[2:0] s3;
    assign s3[0]= s210;
    assign s3[1]= c210;
    assign s3[2]= 0;
    
    wire[3:0] toplam;
    Adder3Bit a1(.sayi1(s1), .sayi2(s2), .toplam(toplam));
    
    wire[3:0] toplam1;
    Adder3Bit a1(.sayi1(toplam), .sayi2(), .toplam(toplam1));
    
endmodule
