`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2023 19:29:54
// Design Name: 
// Module Name: tb_fulladder
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


    module tb_fulladder();
        
       reg i_Ain=0;
       reg i_Bin=0;
       reg i_Cin=0;
       wire  o_Sum;
       wire  o_Carry;
        
        full_adder dut (
             .i_Ain    (i_Ain),
             .i_Bin    (i_Bin), 
             .i_Cin    (i_Cin),
             .o_Sum    (o_Sum), 
             .o_Carry  (o_Carry) 
            );
            
        initial begin
        
            i_Ain=0;
            i_Bin=0;
            i_Cin=1;
            #10;

            i_Ain=0;
            i_Bin=1;
            i_Cin=0;
            #10;
            
            i_Ain=1;
            i_Bin=0;
            i_Cin=0;
            #10;
            
            
            i_Ain=1;
            i_Bin=1;
            i_Cin=0;
            #10;

            i_Ain=0;
            i_Bin=1;
            i_Cin=1;
            #10;
            
            i_Ain=1;
            i_Bin=1;
            i_Cin=1;
            #10;
                    
        end
        

endmodule
