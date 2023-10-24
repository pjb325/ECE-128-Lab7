`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:44:54 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
    reg clk;
    reg d; 
    reg rstn;
    
    dff dff0(.d(d), .rstn(rstn), .clk(clk), .q(q));
    
    always #10 clk = ~clk;
    always #20 d = ~d;
    
    initial begin
        clk <= 0;
        rstn <= 1;
        d <=0; 
    end
endmodule

//module dff_tb();
//    reg clk;
//    reg d; 
//    reg rstn;
    
//    dff1 dff0(.d(d), .rstn(rstn), .clk(clk), .q(q));
    
//    always #10 clk = ~clk;
//    always #17 d = ~d;
//    always #21 rstn = ~rstn;
//    initial begin
//        clk <= 0;
//        rstn <= 1;
//        d <=0; 
//    end
//endmodule

