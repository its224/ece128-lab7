`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:02:58 PM
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
    wire q;
    reg clk;
    reg d;
    reg rstn; 

    dff dff0 (.d(d), .rstn(rstn), .clk(clk), .q(q));
     
    initial begin
        clk = 0;
            forever #5 clk = ~clk;
    end
    initial begin
        d <= 0;
        rstn <= 0;
        #10 d <= 1;
        #10 rstn <= 1; d <= 0; 
        #10 d <= 1;
        #4 rstn <= 0;     
         
    end
endmodule
