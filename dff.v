`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:00:09 PM
// Design Name: 
// Module Name: dff
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

 //SYNCHRONOUS RESET
//module dff(
//    input d, 
//    input rstn,
//    input clk,
//    output reg q
//    );
//always @ (posedge clk) 
//    if (d && !rstn)
//        q <= 1;
//    else 
//        q <= 0;
//endmodule


// ASYNCHRONOUS RESET

module dff(
    input d, 
    input rstn,
    input clk,
    output reg q
    );
always @ (posedge clk or negedge rstn) 
    if (d && !rstn)
        q <= 1;
    else 
        q <= 0;
endmodule
