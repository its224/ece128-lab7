`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:40:31 PM
// Design Name: 
// Module Name: SR_FF_tb
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


module SR_FF_tb();
    reg S, R, CLK;
    wire Q, QBAR;
    
    srff dut(.q(Q), .qbar(QBAR), .s(S), .r(R), .clk(CLK));
    
    initial begin 
        CLK = 0;
            forever #10 CLK = ~CLK;
    end
    initial begin 
        S=1; R=0;
        #100; S=0; R=1;
        #100; S=0; R=0;
        #100; S=1; R=1;
    end
endmodule
