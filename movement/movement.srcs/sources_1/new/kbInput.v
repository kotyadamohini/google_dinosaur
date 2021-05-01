`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2020 12:01:26 PM
// Design Name: 
// Module Name: kbInput
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


module kbInput(VGA_clk,KB_clk,KB_data,code);   
input VGA_clk;   
input KB_clk;   
input KB_data;   
reg [30:0]count;   
output reg [7:0] code;                  
reg Q0, Q1;   
reg [10:0] shreg;   
wire endbit; 
 
  
assign endbit = ~shreg[0];  
assign shift = Q1 & ~Q0; 
 
  always @ (posedge VGA_clk)    
  begin     
  Q0 <= KB_clk;     
  Q1 <= Q0;   
  shreg <= (endbit) ? 11'h7FF : shift ? {KB_data, shreg[10:1]} : shreg;     
  if (endbit)       
  code <= shreg[8:1];     
  else             
  count=count+1'b1;         
  end    

endmodule
