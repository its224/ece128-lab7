`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:43:23 PM
// Design Name: 
// Module Name: srff
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


module srff(
    input s,
    input r,
    input clk, 
    output q,
    output qbar
);
wire s, r, clk;
reg q, qbar;

always @ (posedge clk)
    begin 
        case({s,r})
        {1'b0,1'b0}: begin q=q; qbar=qbar; end
        {1'b0,1'b1}: begin q=1'b0; qbar=1'b1; end
        {1'b1,1'b0}: begin q=1'b1; qbar=1'b0; end
        {1'b1,1'b1}: begin q=1'bx; qbar=1'bx; end
        endcase
    end
        
endmodule
