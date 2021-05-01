`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2020 05:33:10 PM
// Design Name: 
// Module Name: combination
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


module combination(input clk, output reg [3:0]R, output reg [3:0]G,output reg [3:0] B, output HS,VS);
reg [39:0]se,str; reg [15:0]bcd;  wire [28:1]seg,seg1;
 wire blank;wire [10:0]hcount,vcount;wire clk_25;
 reg [25:0]slow_counter;
  reg slow_clk; 
  reg over;
  reg [5:0]rom_addr, rom_col; reg [0:63] rom_data;reg [10:0]bALL_left,bALL_right,bALL_up,bALL_down; 
  reg square_bALLon,rom_bit; 
   initial 
   begin  bALL_left=370;  bALL_right = 434;  bALL_up =44 ;  bALL_down=108; 
   end
   always@(* )
       begin 
       case(rom_addr)  
       6'd0:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;                              
       6'd1:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;                
       6'd2:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;           
       6'd3:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;                
       6'd4:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;               
       6'd5:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;                               
       6'd6:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;               
       6'd7:rom_data=64'b1111100000000000000000000111110000001111111111111111111111100000;    
       6'd8:rom_data=64'b1111100000000000000000000111110000001111111111111111111111100000;               
       6'd9:rom_data=64'b1111100000000000000000000111110000001111111111111111111111100000;           
      6'd10:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;                
      6'd11:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;                
      6'd12:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;                
      6'd13:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;                
      6'd14:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;                
      6'd15:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd16:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd17:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd18:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd19:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd20:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd21:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd22:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd23:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd24:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd25:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd26:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd27:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd28:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;    
      6'd29:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;   
      6'd30:rom_data=64'b1111111111111111111111111111110000000000000001111100000000000000;    
      6'd31:rom_data=64'b1111111111111111111111111111110000000000000001111100000000000000;
      6'd32:rom_data=64'b1111111111111111111111111111110000000000000001111100000000000000;
      6'd33:rom_data=64'b1111111111111111111111111111110000000000000001111100000000000000;
      6'd34:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd35:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd36:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd37:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd38:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd39:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd40:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd41:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd42:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd43:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd44:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd45:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd46:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd47:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd48:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd49:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd50:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd51:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd52:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd53:rom_data=64'b1111100000000000000000000111110000000000000001111100000000000000;
      6'd54:rom_data=64'b1111100000000000000000000111110000001111111111111111111111100000;
      6'd55:rom_data=64'b1111100000000000000000000111110000001111111111111111111111100000;
      6'd56:rom_data=64'b1111100000000000000000000111110000001111111111111111111111100000;
      6'd57:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
      6'd58:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
      6'd59:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
      6'd60:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
      6'd61:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
      6'd62:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
      6'd63:rom_data=64'b0000000000000000000000000000000000000000000000000000000000000000;
       endcase
         end 
integer i,j;
 clk_wiz_0 instance_name
  (
  // Clock in ports
   .clk_in1(clk),      // input clk_in1
   // Clock out ports
   .clk_out1(clk_25));
initial
begin
slow_counter=0;
slow_clk=0;
bcd=0;
end
always@(posedge clk)
begin
slow_counter=slow_counter+1;
slow_clk=slow_counter[25];
end
always@(posedge slow_clk)
begin
if(bcd[3:0]==9 && bcd[7:4]==9 &&bcd[11:8]==9 && bcd[15:12]==9)
bcd<=0;
else if(bcd[3:0]==9 && bcd[7:4]==9 && bcd[11:8]==9)
begin
bcd[15:12]<=bcd[15:12]+1;
bcd[11:8]<=0;
bcd[7:4]<=0;
bcd[3:0]<=0;
end
else if(bcd[3:0]==9 &&bcd[7:4]==9)
begin
bcd[11:8]<=bcd[11:8]+1;
bcd[7:4]<=0;
bcd[3:0]<=0;
end
else if(bcd[3:0]==9)
begin
bcd[7:4]<=bcd[7:4]+1;
bcd[3:0]<=0;
end
else 
bcd[3:0]<=bcd[3:0]+1;
end
always@(bcd)
begin
case(bcd[15:12]) 
4'b0000: se[30]=(seg[1] || seg[3] || seg[7] || seg[6] || seg[5] || seg[2]); 
4'b0001: se[31]=(seg[3] || seg[7]); 
4'b0010:se[32]=(seg[1] || seg[3] || seg[4] || seg[6] || seg[5]); 
4'b0011:se[33]=(seg[1] || seg[3] || seg[7] || seg[6] || seg[4]); 
4'b0100:se[34]=(seg[2] || seg[3] || seg[4] || seg[7]); 
4'b0101:se[35]=(seg[1] || seg[2] || seg[4] || seg[7] || seg[6]); 
4'b0110:se[36]=(seg[1] || seg[2] || seg[5] || seg[4] || seg[7] || seg[6]); 
4'b0111:se[37]=(seg[1] || seg[3] || seg[7]); 
4'b1000:se[38]=(seg [1] || seg[5] || seg[6] || seg[2] || seg[3] || seg[4] || seg[7]);
4'b1001:se[39]=(seg[1] || seg[2] || seg[3] || seg[4] || seg[7] || seg[6]);  
endcase
case(bcd[11:8]) 
4'b0000:se[20]=(seg[8] || seg[9] || seg[10] || seg[12] || seg[13] || seg[14]);                                             
4'b0001:se[21]=(seg[10] || seg[14]);                                                       
4'b0010:se[22]=(seg[8] || seg[10] || seg[11] || seg[12] || seg[13]);      
4'b0011:se[23]=(seg[8] || seg[10] || seg[11] || seg[14] || seg[13]);      
4'b0100:se[24]=(seg[9] || seg[11] || seg[10] || seg[14]);      
4'b0101:se[25]=(seg[8] || seg[9] || seg[11] || seg[14] || seg[13]);     
4'b0110:se[26]=(seg[8] || seg[9] || seg[11] || seg[14] || seg[13] || seg[12]);     
4'b0111:se[27]=(seg[8] || seg[10] || seg[14]);      
4'b1000:se[28]=(seg [8] || seg[9] || seg[10] || seg[11] || seg[12] || seg[13] || seg[14]);      
4'b1001:se[29]=(seg[8] || seg[9] || seg[10] || seg[11] || seg[13] || seg[14]); 
endcase
case(bcd[7:4]) 
4'b0000: se[10]=(seg[15] || seg[17] || seg[21] || seg[20] || seg[19] || seg[16]); 
4'b0001: se[11]=(seg[17] || seg[21]); 
4'b0010:se[12]=(seg[15] || seg[17] || seg[18] || seg[20] || seg[19]); 
4'b0011:se[13]=(seg[15] || seg[17] || seg[21] || seg[20] || seg[18]); 
4'b0100:se[14]=(seg[16] || seg[17] || seg[18] || seg[21]); 
4'b0101:se[15]=(seg[15] || seg[16] || seg[18] || seg[21] || seg[20]); 
4'b0110:se[16]=(seg[15] || seg[16] || seg[19] || seg[18] || seg[21] || seg[20]); 
4'b0111:se[17]=(seg[15] || seg[17] || seg[21]); 
4'b1000:se[18]=(seg [15] || seg[19] || seg[20] || seg[16] || seg[17] || seg[18] || seg[21]);
4'b1001:se[19]=(seg[15] || seg[16] || seg[17] || seg[18] || seg[21] || seg[20]);  
endcase
case(bcd[3:0])         
4'b0000:se[0]=(seg[22] || seg[23] || seg[24] || seg[26] || seg[27] || seg[28]);                                             
4'b0001:se[1]=(seg[24] || seg[28]);                                                       
4'b0010:se[2]=(seg[22] || seg[24] || seg[25] || seg[26] || seg[27]);      
4'b0011:se[3]=(seg[22] || seg[24] || seg[25] || seg[28] || seg[27]);      
4'b0100:se[4]=(seg[23] || seg[25] || seg[24] || seg[28]);      
4'b0101:se[5]=(seg[22] || seg[23] || seg[25] || seg[28] || seg[27]);     
4'b0110:se[6]=(seg[22] || seg[23] || seg[25] || seg[28] || seg[27] || seg[26]);     
4'b0111:se[7]=(seg[22] || seg[24] || seg[28]);      
4'b1000:se[8]=(seg [22] || seg[23] || seg[24] || seg[25] || seg[26] || seg[27] || seg[28]);      
4'b1001:se[9]=(seg[22] || seg[23] || seg[24] || seg[25] || seg[27] || seg[28]); 
endcase 
end

// To display the numerics with segments 
assign seg[1]=(~blank & (hcount >= 550 & hcount <= 565 & vcount>= 50 & vcount <= 52)); 
assign seg[2]=(~blank & (hcount >= 550 & hcount <= 552 & vcount>= 53 & vcount <= 73));
 assign seg[3]=(~blank & (hcount >= 562 & hcount <= 565 & vcount>=53 & vcount <= 73)); 
 assign seg[4]=(~blank & (hcount >= 550 & hcount <= 565 & vcount>= 74 & vcount <=76)); 
 assign seg[5]=(~blank & (hcount >= 550 & hcount <=552  & vcount>= 77 & vcount <= 97)); 
 assign seg[6]=(~blank & (hcount >= 550 & hcount <= 565 & vcount>= 98 & vcount <= 100)); 
 assign seg[7]=(~blank & (hcount >= 562 & hcount <= 565 & vcount>= 77 & vcount <= 97)); 
 assign seg[8]=(~blank & (hcount >= 570 & hcount <= 585 & vcount>= 50 & vcount <= 52)); 
 assign seg[9]=(~blank & (hcount >= 570 & hcount <= 572 & vcount >= 53 & vcount <= 73)); 
 assign seg[10]=(~blank & (hcount >=582 & hcount <= 585 & vcount >= 53 & vcount <= 73)); 
 assign seg[11]=(~blank & (hcount >=570 & hcount <= 585& vcount>= 74 & vcount <= 76)); 
 assign seg[12]=(~blank & (hcount >=570 & hcount <= 572& vcount>= 77 & vcount <= 97)); 
 assign seg[13]=(~blank & (hcount >=570 & hcount <= 585& vcount>= 98 & vcount <= 100)); 
 assign seg[14]=(~blank & (hcount >=582 & hcount <= 585 & vcount>= 77 & vcount <= 97));
 assign seg[15]=(~blank & (hcount >= 590 & hcount <= 605 & vcount>= 50 & vcount <= 52)); 
 assign seg[16]=(~blank & (hcount >= 590 & hcount <= 592 & vcount>= 53 & vcount <= 73));
  assign seg[17]=(~blank & (hcount >= 602 & hcount <= 605 & vcount>=53 & vcount <= 73)); 
  assign seg[18]=(~blank & (hcount >= 590 & hcount <= 605 & vcount>= 74 & vcount <=76)); 
  assign seg[19]=(~blank & (hcount >= 590 & hcount <=592  & vcount>= 77 & vcount <= 97)); 
  assign seg[20]=(~blank & (hcount >= 590 & hcount <= 605 & vcount>= 98 & vcount <= 100)); 
  assign seg[21]=(~blank & (hcount >= 602 & hcount <= 605 & vcount>= 77 & vcount <= 97)); 
  assign seg[22]=(~blank & (hcount >= 610 & hcount <= 625 & vcount>= 50 & vcount <= 52)); 
  assign seg[23]=(~blank & (hcount >= 610 & hcount <= 612 & vcount >= 53 & vcount <= 73)); 
  assign seg[24]=(~blank & (hcount >=622 & hcount <= 625 & vcount >= 53 & vcount <= 73)); 
  assign seg[25]=(~blank & (hcount >=610 & hcount <= 625& vcount>= 74 & vcount <= 76)); 
  assign seg[26]=(~blank & (hcount >=610 & hcount <= 612& vcount>= 77 & vcount <= 97)); 
  assign seg[27]=(~blank & (hcount >=610 & hcount <= 625& vcount>= 98 & vcount <= 100)); 
  assign seg[28]=(~blank & (hcount >=622 & hcount <= 625 & vcount>= 77 & vcount <= 97));
  always@(bcd)
  begin
  case(bcd[15:12]) 
  4'b0000: str[30]=(seg1[1] || seg1[3] || seg1[7] || seg1[6] || seg1[5] || seg1[2]); 
  4'b0001: str[31]=(seg1[3] || seg1[7]); 
  4'b0010:str[32]=(seg1[1] || seg1[3] || seg1[4] || seg1[6] || seg1[5]); 
  4'b0011:str[33]=(seg1[1] || seg1[3] || seg1[7] || seg1[6] || seg1[4]); 
  4'b0100:str[34]=(seg1[2] || seg1[3] || seg1[4] || seg1[7]); 
  4'b0101:str[35]=(seg1[1] || seg1[2] || seg1[4] || seg1[7] || seg1[6]); 
  4'b0110:str[36]=(seg1[1] || seg1[2] || seg1[5] || seg1[4] || seg1[7] || seg1[6]); 
  4'b0111:str[37]=(seg1[1] || seg1[3] || seg1[7]); 
  4'b1000:str[38]=(seg1[1] || seg1[5] || seg1[6] || seg1[2] || seg1[3] || seg1[4] || seg1[7]);
  4'b1001:str[39]=(seg1[1] || seg1[2] || seg1[3] || seg1[4] || seg1[7] || seg1[6]);  
  endcase
  case(bcd[11:8]) 
  4'b0000:str[20]=(seg1[8] || seg1[9] || seg1[10] || seg1[12] || seg1[13] || seg1[14]);                                             
  4'b0001:str[21]=(seg1[10] || seg1[14]);                                                       
  4'b0010:str[22]=(seg1[8] || seg1[10] || seg1[11] || seg1[12] || seg1[13]);      
  4'b0011:str[23]=(seg1[8] || seg1[10] || seg1[11] || seg1[14] || seg1[13]);      
  4'b0100:str[24]=(seg1[9] || seg1[11] || seg1[10] || seg1[14]);      
  4'b0101:str[25]=(seg1[8] || seg1[9] || seg[111] || seg1[14] || seg1[13]);     
  4'b0110:str[26]=(seg1[8] || seg1[9] || seg1[11] || seg1[14] || seg1[13] || seg1[12]);     
  4'b0111:str[27]=(seg1[8] || seg1[10] || seg1[14]);      
  4'b1000:str[28]=(seg1[8] || seg1[9] || seg1[10] || seg1[11] || seg1[12] || seg1[13] || seg1[14]);      
  4'b1001:str[29]=(seg1[8] || seg1[9] || seg1[10] || seg1[11] || seg1[13] || seg1[14]); 
  endcase
  case(bcd[7:4]) 
  4'b0000: str[10]=(seg1[15] || seg1[17] || seg1[21] || seg1[20] || seg1[19] || seg1[16]); 
  4'b0001: str[11]=(seg1[17] || seg1[21]); 
  4'b0010:str[12]=(seg1[15] || seg1[17] || seg1[18] || seg1[20] || seg1[19]); 
  4'b0011:str[13]=(seg1[15] || seg1[17] || seg1[21] || seg1[20] || seg1[18]); 
  4'b0100:str[14]=(seg1[16] || seg1[17] || seg1[18] || seg1[21]); 
  4'b0101:str[15]=(seg1[15] || seg1[16] || seg1[18] || seg1[21] || seg1[20]); 
  4'b0110:str[16]=(seg1[15] || seg1[16] || seg1[19] || seg1[18] || seg1[21] || seg1[20]); 
  4'b0111:str[17]=(seg1[15] || seg1[17] || seg1[21]); 
  4'b1000:str[18]=(seg1[15] || seg1[19] || seg1[20] || seg1[16] || seg1[17] || seg1[18] || seg1[21]);
  4'b1001:str[19]=(seg1[15] || seg1[16] || seg1[17] || seg1[18] || seg1[21] || seg1[20]);  
  endcase
  case(bcd[3:0])         
  4'b0000:str[0]=(seg1[22] || seg1[23] || seg1[24] || seg1[26] || seg1[27] || seg1[28]);                                             
  4'b0001:str[1]=(seg1[24] || seg1[28]);                                                       
  4'b0010:str[2]=(seg1[22] || seg1[24] || seg1[25] || seg1[26] || seg1[27]);      
  4'b0011:str[3]=(seg1[22] || seg1[24] || seg1[25] || seg1[28] || seg1[27]);      
  4'b0100:str[4]=(seg1[23] || seg1[25] || seg1[24] || seg1[28]);      
  4'b0101:str[5]=(seg1[22] || seg1[23] || seg1[25] || seg1[28] || seg1[27]);     
  4'b0110:str[6]=(seg1[22] || seg1[23] || seg1[25] || seg1[28] || seg1[27] || seg1[26]);     
  4'b0111:str[7]=(seg1[22] || seg1[24] || seg1[28]);      
  4'b1000:str[8]=(seg1[22] || seg1[23] || seg1[24] || seg1[25] || seg1[26] || seg1[27] || seg1[28]);      
  4'b1001:str[9]=(seg1[22] || seg1[23] || seg1[24] || seg1[25] || seg1[27] || seg1[28]); 
  endcase 
  end

  // to another display
  assign seg1[1]=(~blank & (hcount >= 450 & hcount <= 465 & vcount>= 50 & vcount <= 52)); 
  assign seg1[2]=(~blank & (hcount >= 450 & hcount <= 452 & vcount>= 53 & vcount <= 73));
   assign seg1[3]=(~blank & (hcount >= 462 & hcount <= 465 & vcount>=53 & vcount <= 73)); 
   assign seg1[4]=(~blank & (hcount >= 450 & hcount <= 465 & vcount>= 74 & vcount <=76)); 
   assign seg1[5]=(~blank & (hcount >= 450 & hcount <=452  & vcount>= 77 & vcount <= 97)); 
   assign seg1[6]=(~blank & (hcount >= 450 & hcount <= 465 & vcount>= 98 & vcount <= 100)); 
   assign seg1[7]=(~blank & (hcount >= 462 & hcount <= 465 & vcount>= 77 & vcount <= 97)); 
   assign seg1[8]=(~blank & (hcount >= 470 & hcount <= 485 & vcount>= 50 & vcount <= 52)); 
   assign seg1[9]=(~blank & (hcount >= 470 & hcount <= 472 & vcount >= 53 & vcount <= 73)); 
   assign seg1[10]=(~blank & (hcount >=482 & hcount <= 485 & vcount >= 53 & vcount <= 73)); 
   assign seg1[11]=(~blank & (hcount >=470 & hcount <= 485& vcount>= 74 & vcount <= 76)); 
   assign seg1[12]=(~blank & (hcount >=470 & hcount <= 472& vcount>= 77 & vcount <= 97)); 
   assign seg1[13]=(~blank & (hcount >=470 & hcount <= 485& vcount>= 98 & vcount <= 100)); 
   assign seg1[14]=(~blank & (hcount >=482 & hcount <= 485 & vcount>= 77 & vcount <= 97));
   assign seg1[15]=(~blank & (hcount >= 490 & hcount <= 505 & vcount>= 50 & vcount <= 52)); 
   assign seg1[16]=(~blank & (hcount >= 490 & hcount <= 492 & vcount>= 53 & vcount <= 73));
    assign seg1[17]=(~blank & (hcount >= 502 & hcount <= 505 & vcount>=53 & vcount <= 73)); 
    assign seg1[18]=(~blank & (hcount >= 490 & hcount <= 505 & vcount>= 74 & vcount <=76)); 
    assign seg1[19]=(~blank & (hcount >= 490 & hcount <=492  & vcount>= 77 & vcount <= 97)); 
    assign seg1[20]=(~blank & (hcount >= 490 & hcount <= 505 & vcount>= 98 & vcount <= 100)); 
    assign seg1[21]=(~blank & (hcount >= 502 & hcount <= 505 & vcount>= 77 & vcount <= 97)); 
    assign seg1[22]=(~blank & (hcount >= 510 & hcount <= 525 & vcount>= 50 & vcount <= 52)); 
    assign seg1[23]=(~blank & (hcount >= 510 & hcount <= 512 & vcount >= 53 & vcount <= 73)); 
    assign seg1[24]=(~blank & (hcount >=522 & hcount <= 525 & vcount >= 53 & vcount <= 73)); 
    assign seg1[25]=(~blank & (hcount >=510 & hcount <= 525& vcount>= 74 & vcount <= 76)); 
    assign seg1[26]=(~blank & (hcount >=510 & hcount <= 512& vcount>= 77 & vcount <= 97)); 
    assign seg1[27]=(~blank & (hcount >=510 & hcount <= 525& vcount>= 98 & vcount <= 100)); 
    assign seg1[28]=(~blank & (hcount >=522 & hcount <= 525 & vcount>= 77 & vcount <= 97));
 /* initial
  begin
  str[39:30]=se[39:30];
  str[29:20]=se[29:20];
  str[19:10]=se[19:10];
  str[9:0]=se[9:0];
  end*/
 always@(posedge clk_25) 
 begin  
  square_bALLon=(hcount >= bALL_left) && (hcount <= bALL_right) && (vcount >= bALL_up)&& (vcount <= bALL_down);        
      rom_addr = vcount[5:0]- bALL_up[5:0];       
       rom_col = hcount[5:0] - bALL_left[5:0];       
       rom_bit =rom_data[rom_col];  
 if(se[0] || se[1] || se[2] || se[3] || se[4] || se[5] || se[6] || se[7] || se[8] || se[9] || se[10] || se[11] || se[12] || se[13] || se[14] ||se[15] || se[16] || se[17] || se[18] || se[19] || se[20] || se[21] || se[22] || se[23] || se[24] || se[25] || se[26] || se[27] || se[28] || se[29] || se[30] || se[31] || se[32] || se[33] || se[34] ||se[35] || se[36] || se[37] || se[38] || se[39] || str[0] || str[1] || str[2] || str[3]  || str[4] || str[5] || str[6] ||   str[7] || str[8] ||   str[9] ||   str[10] ||   str[11] ||   str[12] ||   str[13] ||   str[14] ||   str[15] ||   str[16] ||   str[17] ||   str[18] ||   str[19]   ||  str[20] ||  str[21] ||   str[22] ||   str[23] ||   str[24] ||   str[25] ||   str[26] ||   str[27] ||   str[28] ||   str[29] ||  str[30] ||   str[31] ||   str[32] ||   str[33] ||   str[34] ||   str[35] ||   str[36] ||   str[37] ||   str[38] ||   str[39]  ||   square_bALLon && rom_bit )     
 begin           
 R<=4'b1111;          
 G<=4'b1111;         
 B<=4'b1111;          
 end     
 else   
 begin          
 R<=4'b0000;          
 G<=4'b0000;          
 B<=4'b0000;   
 end 
 end   

vga_controller(clk_25,HS,VS,hcount,vcount,blank);
endmodule
