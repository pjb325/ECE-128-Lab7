`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 03:17:34 PM
// Design Name: 
// Module Name: countff_tb
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


module countff_tb();
    reg clk, rstn;
    wire Q1,Q2,Q3;
    
    Counters UUT(.sysclk(clk), .rstn(rstn), .Q1(Q1),.Q2(Q2),.Q3(Q3));
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin 
        rstn = 1;
        #10 rstn = 0;
        #200;
    end
    
endmodule
