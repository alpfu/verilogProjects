`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 23:59:23
// Design Name: 
// Module Name: buyuk_kucuk_4sayi
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


module buyuk_kucuk_4sayi( //4 tane 2-bit sayiyi buyuk_kucuk modulu ile kucuk bulur
    input[1:0] a2,
    input[1:0] b2,
    input[1:0] c2,
    input[1:0] d2,
    output[1:0] e2
    );
    
    //a yi b c d ile karsilastirdi
    wire[1:0] ab, ac, ad;
    buyuk_kucuk bk1(.c(ab), .a(a2), .b(b2));
    buyuk_kucuk bk2(.c(ac), .a(a2), .b(c2));
    buyuk_kucuk bk3(.c(ad), .a(a2), .b(d2));
    
    // yukardaki karsilastirma ile 3 sayi olustu. onlar karsilastirildi
    wire[1:0] abac, abad;
    buyuk_kucuk bk4(.c(abac), .a(ab), .b(ac));
    buyuk_kucuk bk5(.c(abad), .a(ab), .b(ad));
    
    //yukardaki karsilastirma ile 2 sayiya dustu. birbiri ile karsilastir
    buyuk_kucuk bk6(.c(e2), .a(abac), .b(abad));
endmodule
