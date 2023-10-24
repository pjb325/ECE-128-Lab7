`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:40:21 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb();
    reg S,R;
    wire Q, Qbar;
    
    sr_latch UUT(.S(S), .R(R), .Q(Q), .Qbar(Qbar));
    
    initial 
        begin
            R = 0; S = 0; 
            #5
            S =1;
            #5
            S=0;
            #5
            R = 1;
            #5
            R = 0; S = 1;  
            #5
            R = 1; S = 0;
            #5
            R = 0;
            #5
            R = 1; S = 1;
            #5
        $finish;
        end
         
    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end
    
endmodule
