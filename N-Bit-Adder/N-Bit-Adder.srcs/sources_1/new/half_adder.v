`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Semih B. Saraç 
// 
// Create Date: 28.06.2023 17:20:08
// Design Name: Half Adder
// Module Name: half_adder
// Project Name: N-Bit Adder
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


    module half_adder(
    
        input   i_Ain,
                i_Bin, // Half Adder inputs
        
        output reg  o_Sum,      // Half Adder outputs
                    o_Carry
        );
        
            always @(*) begin
                
                o_Sum   <= i_Ain ^ i_Bin ;          
                o_Carry <= i_Ain & i_Bin ;
            
            end
            
    endmodule
