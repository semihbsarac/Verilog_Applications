`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2023 19:05:49
// Design Name: 
// Module Name: tb_nbitadder
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


    module tb_nbitadder();
        
       parameter [3:0] X=8; 
       reg [X-1:0] i_Ain=0;
       reg [X-1:0] i_Bin=0;
       reg i_Cin=1;
       wire  [X-1:0] o_Sum;
       wire  o_Carry;
       
 
        nbit_adder dut (
             .i_Ain    (i_Ain),
             .i_Bin    (i_Bin), 
             .i_Cin    (i_Cin),
             .o_Sum    (o_Sum), 
             .o_Carry  (o_Carry) 
            );
            
        initial begin
        
            i_Ain=8'b01010101;
            i_Bin=8'b10101010;
            i_Cin=0;
            #10;

            i_Ain=8'b01010101;
            i_Bin=8'b10101010;
            i_Cin=1;
            #10;
            
            i_Ain=8'b11111111;
            i_Bin=8'b11111111;
            i_Cin=0;
            #10;         
 
            i_Ain=8'b11111111;
            i_Bin=8'b11111111;
            i_Cin=0;
            #10;      
                           
        end
        

endmodule
