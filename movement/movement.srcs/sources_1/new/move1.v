`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2020 03:34:28 PM
// Design Name: 
// Module Name: move1
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


module move1(output reg[3:0]B, output reg [3:0]R, output VS, output HS, output reg [3:0]G,input clk); 
 wire [10:0] hcount,vcount; 
 reg [10:0]x,y; 
 wire clk_25; 
 wire blank;
 reg slow_clk; 
 reg [22:0]slow_count;
 reg square_bALLon,rom_bit; 
 reg [4:0]rom_addr, rom_col; reg [31:0] rom_data;
  clk_wiz_0 instance_name
   (
   // Clock in ports
    .clk_in1(clk),      // input clk_in1
    // Clock out ports
    .clk_out1(clk_25)); 
initial 
begin  
x = 11'd640;  
y = 11'd388; 
end 
always @ (posedge clk)  
begin 
slow_count = slow_count + 1'b1;   
slow_clk = slow_count[22]; 
end 
always@(* )
    begin 
    case(rom_addr)  
    5'd0:rom_data=32'b00000011110000001111100111100111;
     5'd1:rom_data=32'b00000011110000001111100111100111;
     5'd2:rom_data=32'b00000011110011101111100111100111;
     5'd3:rom_data=32'b00000011110011101111100111100111;
     5'd4:rom_data=32'b00000011110011101111100111100111;
     5'd5:rom_data=32'b00000011110011101111100111100111;
     5'd6:rom_data=32'b11110011110011101111100111100111;
     5'd7:rom_data=32'b11110011110011101111100111100111;
     5'd8:rom_data=32'b11110011110011101111100111110111;
     5'd9:rom_data=32'b11110011110011101111100111100111;
     5'd10:rom_data=32'b11110011111111101111100111100110;
     5'd11:rom_data=32'b11110011110000001111100111101100;
     5'd12:rom_data=32'b11110011110000001111100111111000;
     5'd13:rom_data=32'b11110011110000001111111111100000;
     5'd14:rom_data=32'b11111111110000001111111111100000;
     5'd15:rom_data=32'b11111111110000000001111111100000;
     5'd16:rom_data=32'b11111111110000000000011111100000;
     5'd17:rom_data=32'b00000111110000011100000111100000;
     5'd18:rom_data=32'b00000111110000011100000111100000;
     5'd19:rom_data=32'b00000111110000011100000111100000;
     5'd20:rom_data=32'b00000011110000011100000111100000;
     5'd21:rom_data=32'b00000011110000011100000111100000;
     5'd22:rom_data=32'b00000011110111011100000111100000;
     5'd23:rom_data=32'b00000011110111011100000111100000;
     5'd24:rom_data=32'b00000011110111011100000111100000;
     5'd25:rom_data=32'b00000011110111011100000111100000;
     5'd26:rom_data=32'b00000011110111011100110111100000;
     5'd27:rom_data=32'b00000011110111111100110111100000;
     5'd28:rom_data=32'b00000011110111111100110111100000;
     5'd29:rom_data=32'b00000011110011111100110111100000;
     5'd30:rom_data=32'b00000011110000011100110111100000;
     5'd31:rom_data=32'b00000011110000011111110111100000;
    endcase 
      end 
      always@(posedge clk_25)      
      begin      
      square_bALLon=(hcount >= x) && (hcount <= x+32) && (vcount >= y)&& (vcount <= y+32);        
      rom_addr = vcount[4:0]- y[4:0];       
       rom_col = hcount[4:0] - x[4:0];       
       rom_bit =rom_data[rom_col]; 
        if(    square_bALLon && rom_bit) 
                   begin             
                    R <= 4'b1111;              
                    G <= 4'b0000;              
                    B <= 4'b0000;            
                    end       
                     else           
                      begin              
                       R <= 4'b0000;               
                       G <= 4'b1111;               
                       B <= 4'b1111;  
                      end 
                      end
 always@(posedge slow_clk) 
 begin
 x = x- 11'd1;       
 y=y;    
 end
 vga_controller u1(clk_25,HS,VS,hcount,vcount,blank);       
endmodule
