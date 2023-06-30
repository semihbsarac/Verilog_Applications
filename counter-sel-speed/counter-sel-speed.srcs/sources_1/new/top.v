`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 19:19:44
// Design Name: 
// Module Name: top
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


module top( clk,
            i_selspeed,
            o_counter
          );

    parameter p_clk_freq= 100_000_000;
    
    input clk;
    input [1:0] i_selspeed;
    output reg [7:0] o_counter;
    
    parameter twosec = p_clk_freq*2; 
    parameter onesec = p_clk_freq;
    parameter halfsec = p_clk_freq/2;
    parameter quartsec = p_clk_freq/4;
     
    
    reg [27:0] timer=0;
    reg [27:0]  timerlimit=0;
    reg [7:0] counter_temp=0;
    
    always @(*) begin
        
        
        if(i_selspeed==2'b00)begin
            timerlimit = twosec; 
        end
        else if(i_selspeed==2'b01)begin
            timerlimit = onesec; 
        end
        else if(i_selspeed==2'b10)begin
            timerlimit = halfsec; 
        end    
        else begin 
            timerlimit=quartsec;
        end
     
    end

    always @(posedge clk) begin
        
        if (timer >= timerlimit-1) begin //if we do (==) will be overflow for other situation  
            counter_temp <= counter_temp+1;
            timer<=0;          
        end
         
        else begin
            timer <= timer+1;
        end     
      o_counter<=counter_temp;      
    end
               
    endmodule
