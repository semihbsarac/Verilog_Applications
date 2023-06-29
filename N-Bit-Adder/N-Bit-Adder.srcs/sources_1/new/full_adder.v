`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2023 17:20:08
// Design Name: 
// Module Name: full_adder
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


    module full_adder(
    
        input   i_Ain,
                i_Bin, // Half Adder inputs
                i_Cin,
        output  o_Sum,      // Half Adder outputs
        output reg o_Carry 
        );
        
        wire o_SumTemp;
        wire o_CarryTemp;
        wire o_SecondCarryTemp;
       
        half_adder half_adder1(
                  .i_Ain(i_Ain),
                  .i_Bin(i_Bin),
                  .o_Sum(o_SumTemp),
                  .o_Carry(o_CarryTemp) 
         );  
  
        half_adder half_adder2(
                   .i_Ain(i_Cin),
                   .i_Bin(o_SumTemp),
                   .o_Sum(o_Sum),
                   .o_Carry(o_SecondCarryTemp) 
          );  

            always @(*) begin
                
                o_Carry <= o_SecondCarryTemp | o_CarryTemp;  
                
            end
            
    endmodule

