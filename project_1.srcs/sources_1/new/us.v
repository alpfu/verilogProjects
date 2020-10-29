`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2017 09:50:32
// Design Name: 
// Module Name: us
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


module us(
    input[1:0] a,//2bit
    input b,       //1 bit
    input[1:0] c,   //2bit
    output[4:0] d    //5bit
    );
    
      // her bir bitin deðilleri elde edelim
      wire a0n,a1n,bn,c0n,c1n;
      not (a1n,a[1]);
      not (a0n,a[0]);
      not (bn,b);        //tek bit 
      not (c1n,c[1]);
      not (c0n,c[0]);
      
       //d[4]= m31
      and(d[4],a[1],a[0],b,c[1],c[0]);
       //  d[4] asagidaki iki satiri yazarakta bulabilirdik.
       //  and(m31,a[1],a[0],b,c[1],c[0]); //31=11111
       //      assign d[4]=m31;        
    
      //d[3]= m23+m30+m31
      wire m23,m30,m31;
      and(m23,a[1],a0n,b,c[1],c[0]); //23=10111
      and(m30,a[1],a[0],b,c[1],c0n); //30=11110
      and(m31,a[1],a[0],b,c[1],c[0]); //31=11111
      or(d[3],m23,m30,m31);
      
      //d[2]= m22
      and(d[2], a[1], a0n, b, c[1], c0n); //22=10110
      
      //d[1]= m31+m29+m21
      wire m29, m21; // m31 yukarda tanýmlandý direkt kullanýyoruz
      and(m29, a[1], a[0], b, c1n, c[0]); //29=11101
      and(m21, a[1], a0n, b, c1n, c[0]); //21=10101
      or(d[1], m31, m29, m21);
      
      //d[0]= m8 + m9 + m10 + m11 + m12 + m13 + m14 + m15 + m16 + m17 + m18 + m19 + m20 + m24 + m25 + m26 + m27 + m28 + m29 + m30 + m31
      wire m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m24, m25, m26, m27, m28;
      and(m8, a1n, a[0], bn, c1n, c0n); //01000
      and(m9, a1n, a[0], bn, c1n, c[0]); //01001
      and(m10, a1n, a[0], bn, c[1], c0n); //01010
      and(m11, a1n, a[0], bn, c[1], c[0]); //01011
      and(m12, a1n, a[0], b, c1n, c0n); //01100
      and(m13, a1n, a[0], b, c1n, c[0]); //01101
      and(m14, a1n, a[0], b, c[1], c0n); //01110
      and(m15, a1n, a[0], b, c[1], c[0]); //01111
      and(m16, a[1], a0n, bn, c1n, c0n); //10000
      and(m17, a[1], a0n, bn, c1n, c[0]); //10001
      and(m18, a[1], a0n, bn, c[1], c0n); //10010
      and(m19, a[1], a0n, bn, c[1], c[0]); //10011
      and(m20, a[1], a0n, b, c1n, c0n); //10100
      and(m24, a[1], a[0], bn, c1n, c0n); //11000
      and(m25, a[1], a[0], bn, c1n, c[0]); //11001          
      and(m26, a[1], a[0], bn, c[1], c0n); //11010
      and(m27, a[1], a[0], bn, c[1], c[0]); //11011
      and(m28, a[1], a[0], b, c1n, c0n); //11100
      or(d[0], m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m24, m25, m26, m27, m28, m29, m30, m31);
            
endmodule
