`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2017 10:30:12
// Design Name: 
// Module Name: bib3
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


module bib3(
    input reg[8:0] buyruk,
    output[3:0] sonuc
    );
    reg[2:0] sayi1= buyruk[5:3];
    reg[2:0] sayi2= buyruk[2:0];
    reg[1:0] top;
    always@*begin
        sonuc= 4'b0000;
        case(buyruk[8:6]) 
        3'b000: sonuc= sayi1+sayi2;
        3'b001: sonuc= sayi1-sayi2;
        3'b010: sonuc= sayi1&sayi2;
        3'b011: sonuc= sayi1|sayi2;
        3'b100: sonuc= &sayi1;
        3'b101: sonuc= |sayi2;
        3'b110: begin
            top= buyruk[0] + buyruk[1] + buyruk[2];
            if(top%2 == 0)
                sonuc= 1'b0;
            else
                sonuc= 1'b1;
        end
        3'b111: ;         
        endcase
    end
endmodule
