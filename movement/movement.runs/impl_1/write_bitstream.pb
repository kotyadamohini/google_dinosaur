
l
Command: %s
1870*	planAhead27
#open_checkpoint movement_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.020 . Memory (MB): peak = 206.590 ; gain = 0.0002default:defaulth px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
842default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2016.12default:defaultZ1-479h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
Parsing XDC File [%s]
179*designutils2
kC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement_board.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2
kC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement_board.xdc2default:defaultZ20-178h px? 
?
Parsing XDC File [%s]
179*designutils2
kC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement_early.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2
kC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement_early.xdc2default:defaultZ20-178h px? 
?
Parsing XDC File [%s]
179*designutils2y
eC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2y
eC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement.xdc2default:defaultZ20-178h px? 
?
Parsing XDC File [%s]
179*designutils2~
jC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement_late.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2~
jC:/Users/VLSI/Desktop/movement/movement.runs/impl_1/.Xil/Vivado-6148-DESKTOP-FAGG66O/dcp/movement_late.xdc2default:defaultZ20-178h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.1002default:default2
486.6642default:default2
0.0002default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.1002default:default2
486.6642default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2016.1 (64-bit)2default:default2
15382592default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:042default:default2
00:00:452default:default2
486.6642default:default2
280.0742default:defaultZ17-268h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
Rule violation (%s) %s - %s
20*drc2
CFGBVS-12default:default2G
3Missing CFGBVS and CONFIG_VOLTAGE Design Properties2default:default2?
?Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[30] is a gated clock net sourced by a combinational pin str_reg[30]_i_2/O, cell str_reg[30]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[31] is a gated clock net sourced by a combinational pin str_reg[31]_i_2/O, cell str_reg[31]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[32] is a gated clock net sourced by a combinational pin str_reg[32]_i_2/O, cell str_reg[32]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[33] is a gated clock net sourced by a combinational pin str_reg[33]_i_2/O, cell str_reg[33]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[34] is a gated clock net sourced by a combinational pin str_reg[34]_i_2/O, cell str_reg[34]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[35] is a gated clock net sourced by a combinational pin str_reg[35]_i_2/O, cell str_reg[35]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[36] is a gated clock net sourced by a combinational pin str_reg[36]_i_2/O, cell str_reg[36]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[37] is a gated clock net sourced by a combinational pin str_reg[37]_i_2/O, cell str_reg[37]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[38] is a gated clock net sourced by a combinational pin str_reg[38]_i_2/O, cell str_reg[38]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net data10[39] is a gated clock net sourced by a combinational pin str_reg[39]_i_2/O, cell str_reg[39]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[0] is a gated clock net sourced by a combinational pin se_reg[0]_i_2/O, cell se_reg[0]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[1] is a gated clock net sourced by a combinational pin se_reg[1]_i_2/O, cell se_reg[1]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[2] is a gated clock net sourced by a combinational pin se_reg[2]_i_2/O, cell se_reg[2]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[3] is a gated clock net sourced by a combinational pin se_reg[3]_i_2/O, cell se_reg[3]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[4] is a gated clock net sourced by a combinational pin se_reg[4]_i_2/O, cell se_reg[4]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[5] is a gated clock net sourced by a combinational pin se_reg[5]_i_2/O, cell se_reg[5]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[6] is a gated clock net sourced by a combinational pin se_reg[6]_i_2/O, cell se_reg[6]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[7] is a gated clock net sourced by a combinational pin se_reg[7]_i_2/O, cell se_reg[7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[8] is a gated clock net sourced by a combinational pin se_reg[8]_i_2/O, cell se_reg[8]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se[9] is a gated clock net sourced by a combinational pin se_reg[9]_i_2/O, cell se_reg[9]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[20] is a gated clock net sourced by a combinational pin se_reg[20]_i_2/O, cell se_reg[20]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[21] is a gated clock net sourced by a combinational pin se_reg[21]_i_2/O, cell se_reg[21]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[22] is a gated clock net sourced by a combinational pin se_reg[22]_i_2/O, cell se_reg[22]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[23] is a gated clock net sourced by a combinational pin se_reg[23]_i_2/O, cell se_reg[23]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[24] is a gated clock net sourced by a combinational pin se_reg[24]_i_2/O, cell se_reg[24]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[25] is a gated clock net sourced by a combinational pin se_reg[25]_i_2/O, cell se_reg[25]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[26] is a gated clock net sourced by a combinational pin se_reg[26]_i_2/O, cell se_reg[26]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[27] is a gated clock net sourced by a combinational pin se_reg[27]_i_2/O, cell se_reg[27]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[28] is a gated clock net sourced by a combinational pin se_reg[28]_i_2/O, cell se_reg[28]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se__0[29] is a gated clock net sourced by a combinational pin se_reg[29]_i_2/O, cell se_reg[29]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[10]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[10]_i_2/O, cell se_reg[10]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[11]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[11]_i_2/O, cell se_reg[11]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[12]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[12]_i_2/O, cell se_reg[12]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[13]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[13]_i_2/O, cell se_reg[13]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[14]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[14]_i_2/O, cell se_reg[14]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[15]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[15]_i_2/O, cell se_reg[15]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[16]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[16]_i_2/O, cell se_reg[16]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[17]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[17]_i_2/O, cell se_reg[17]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[18]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[18]_i_2/O, cell se_reg[18]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[19]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[19]_i_2/O, cell se_reg[19]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[30]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[30]_i_2/O, cell se_reg[30]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[31]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[31]_i_2/O, cell se_reg[31]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[32]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[32]_i_2/O, cell se_reg[32]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[33]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[33]_i_2/O, cell se_reg[33]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[34]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[34]_i_2/O, cell se_reg[34]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[35]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[35]_i_2/O, cell se_reg[35]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[36]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[36]_i_2/O, cell se_reg[36]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[37]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[37]_i_2/O, cell se_reg[37]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[38]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[38]_i_2/O, cell se_reg[38]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net se_reg[39]_i_2_n_0 is a gated clock net sourced by a combinational pin se_reg[39]_i_2/O, cell se_reg[39]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[0] is a gated clock net sourced by a combinational pin str_reg[0]_i_2/O, cell str_reg[0]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[1] is a gated clock net sourced by a combinational pin str_reg[1]_i_2/O, cell str_reg[1]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[2] is a gated clock net sourced by a combinational pin str_reg[2]_i_2/O, cell str_reg[2]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[3] is a gated clock net sourced by a combinational pin str_reg[3]_i_2/O, cell str_reg[3]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[4] is a gated clock net sourced by a combinational pin str_reg[4]_i_2/O, cell str_reg[4]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[5] is a gated clock net sourced by a combinational pin str_reg[5]_i_2/O, cell str_reg[5]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[6] is a gated clock net sourced by a combinational pin str_reg[6]_i_2/O, cell str_reg[6]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[7] is a gated clock net sourced by a combinational pin str_reg[7]_i_2/O, cell str_reg[7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[8] is a gated clock net sourced by a combinational pin str_reg[8]_i_2/O, cell str_reg[8]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str[9] is a gated clock net sourced by a combinational pin str_reg[9]_i_2/O, cell str_reg[9]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[20] is a gated clock net sourced by a combinational pin str_reg[20]_i_2/O, cell str_reg[20]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[21] is a gated clock net sourced by a combinational pin str_reg[21]_i_2/O, cell str_reg[21]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[22] is a gated clock net sourced by a combinational pin str_reg[22]_i_2/O, cell str_reg[22]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[23] is a gated clock net sourced by a combinational pin str_reg[23]_i_2/O, cell str_reg[23]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[24] is a gated clock net sourced by a combinational pin str_reg[24]_i_2/O, cell str_reg[24]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[25] is a gated clock net sourced by a combinational pin str_reg[25]_i_2/O, cell str_reg[25]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[26] is a gated clock net sourced by a combinational pin str_reg[26]_i_2/O, cell str_reg[26]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[27] is a gated clock net sourced by a combinational pin str_reg[27]_i_2/O, cell str_reg[27]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[28] is a gated clock net sourced by a combinational pin str_reg[28]_i_2/O, cell str_reg[28]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str__0[29] is a gated clock net sourced by a combinational pin str_reg[29]_i_2/O, cell str_reg[29]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[10]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[10]_i_2/O, cell str_reg[10]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[11]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[11]_i_2/O, cell str_reg[11]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[12]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[12]_i_2/O, cell str_reg[12]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[13]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[13]_i_2/O, cell str_reg[13]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[14]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[14]_i_2/O, cell str_reg[14]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[15]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[15]_i_2/O, cell str_reg[15]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[16]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[16]_i_2/O, cell str_reg[16]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[17]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[17]_i_2/O, cell str_reg[17]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[18]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[18]_i_2/O, cell str_reg[18]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net str_reg[19]_i_2_n_0 is a gated clock net sourced by a combinational pin str_reg[19]_i_2/O, cell str_reg[19]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 81 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
_
Writing bitstream %s...
11*	bitstream2"
./movement.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:212default:default2
00:03:202default:default2
934.9382default:default2
448.2732default:defaultZ17-268h px? 
e
Unable to parse hwdef file %s162*	vivadotcl2"
movement.hwdef2default:defaultZ4-395h px? 


End Record