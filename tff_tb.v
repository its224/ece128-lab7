`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:26:00 PM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
    wire q;
    reg clk;
    reg t;
    reg rstn; 
    wire [2:0]count;

    tff tff0 (.clk(clk), .rstn(rstn), .t(t), .q(q), .count(count));
     
    initial begin
        clk = 0;
            forever #5 clk = ~clk;
    end
    initial begin
        t <= 0;
        rstn <= 1;
        #5 rstn <= 0;
        #8 t <= 1;
        #8 rstn <= 1; t <= 0; 
        #8 t <= 1;
        #5 rstn <= 0;     
         
    end
endmodule
