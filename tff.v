`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:25:40 PM
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


module tff(input clk, input rstn, input t, output reg q, output reg [2:0] count);
    
    always @(posedge clk) begin
        if(t && !rstn)
            q <= ~q;
        else if(rstn)
            q <= 0;
        else 
            q <= q;
        if(rstn)
            count <= 3'b0;
        else 
            count <= count + 1'b1;
    end
endmodule
