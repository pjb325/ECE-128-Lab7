`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:06:25 PM
// Design Name: 
// Module Name: sr_flipflop_tb
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


module sr_flipflop_tb();
    reg S,R, CLK;
    wire Q, QBAR;
    
    sr_flipflop dut(.CLK(CLK), .S(S), .R(R), .Q(Q), .Qbar(QBAR)); // instantiation by port name.
    
    // apply test vectors
    initial begin
      CLK=0;
      forever #10 CLK = ~CLK;
    end
     
    initial 
    begin 
        S= 1; R= 0;
        #100; S= 0; R= 1; 
        #100; S= 0; R= 0; 
        #100;  S= 1; R=1;
    $finish; 
    end
    
endmodule
