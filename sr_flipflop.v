`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:58:34 PM
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(input CLK,input S,input R,output Q,output Qbar);
    wire w1, w2;
    and #1 NA1(w1, R, CLK);
    and #1 NA2(w2, CLK, S);
    nor #1 NO1(Q, w1, Qbar);
    nor #1 NO2(Qbar, w2, Q);
endmodule
