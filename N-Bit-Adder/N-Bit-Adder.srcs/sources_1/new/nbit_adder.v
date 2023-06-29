`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2023 21:42:28
// Design Name: 
// Module Name: nbit_adder
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


    module nbit_adder( 
                       i_Ain,
                       i_Bin,
                       i_Cin,
                       o_Sum,
                       o_Carry
                      );
          
       
        parameter [3:0] X=8;
        
        input [X-1:0]   i_Ain,
                        i_Bin;
        input           i_Cin;
        output [X-1:0]  o_Sum;
        output wire     o_Carry;
        wire [X:0]      o_CarryTemp;
        
        assign o_CarryTemp[0]=i_Cin;
       

           genvar k;  
                   generate
                         for (k=0; k<X;  k=k+1)
                             begin
                               full_adder  full_adder_(
                                            .i_Ain(i_Ain[k]),
                                            .i_Bin(i_Bin[k]),
                                            .i_Cin(o_CarryTemp[k]),
                                            .o_Sum(o_Sum[k]),
                                            .o_Carry(o_CarryTemp[k+1]) 
                                   );  
                             end
                                assign o_Carry = o_CarryTemp[X];     
                   endgenerate
          
    endmodule

