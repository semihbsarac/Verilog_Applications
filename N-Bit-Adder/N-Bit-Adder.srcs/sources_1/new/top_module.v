`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2023 17:20:08
// Design Name: 
// Module Name: top_module
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


module top_module(

        input [15:0] sw,
        input bttn_c,
        output [8:0] LED

    );
    
    nbit_adder nbitadder (
        .i_Ain(sw[7:0]),
        .i_Bin(sw[15:8]),
        .i_Cin(bttn_c),
        .o_Sum(LED[7:0]),
        .o_Carry(LED[8])          
                                    
    );
        
endmodule
