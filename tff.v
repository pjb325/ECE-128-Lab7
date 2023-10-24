`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 03:08:24 PM
// Design Name: 
// Module Name: tff
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


module tff(
    input clk,
    input rstn,
    input t,
    output reg q
    );
    
    always @(posedge clk or rstn) begin 
            if(rstn)
                q <= 1'b0;
            else if (t)
                q <= ~q;
            else 
                q <= q;
      end
endmodule

module Counters( sysclk,rstn,Q1,Q2,Q3);
   input sysclk, rstn;
   output Q1;
   output Q2;
   output Q3;

   wire tt2;
   wire tt3;

    tff       num_1(.clk(sysclk),.rstn(rstn), .t(1'b1),.q(Q1));
    assign tt2 = Q1;
    tff       num_2(.clk(sysclk),.rstn(rstn),.t(tt2),.q(Q2));
    assign tt3 = Q1& (Q2);
    tff       num_3(.clk(sysclk),.rstn(rstn),.t(tt3),.q(Q3)); 
    
 endmodule

