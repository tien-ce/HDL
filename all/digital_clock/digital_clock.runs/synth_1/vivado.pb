
­
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:122	
459.8282	
185.730Z17-268h px 
Ô
Command: %s
1870*	planAhead2
read_checkpoint -auto_incremental -incremental C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/utils_1/imports/synth_1/digital_clock.dcpZ12-2866h px 
Ò
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2n
lC:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/utils_1/imports/synth_1/digital_clock.dcpZ12-5825h px 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px 
h
Command: %s
53*	vivadotcl27
5synth_design -top digital_clock -part xc7z020clg400-1Z4-113h px 
:
Starting synth_design
149*	vivadotclZ4-321h px 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px 
D
Loading part %s157*device2
xc7z020clg400-1Z21-403h px 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px 
¢
øFlow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px 
M
#Helper process launched with PID %s4824*oasys2
6200Z8-7075h px 

%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:14 . Memory (MB): peak = 1322.602 ; gain = 441.020
h px 
Ä
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
add1hour_btn2
wire2F
BC:/Users/thuyh/OneDrive/Documents/add/add.srcs/sources_1/new/add.v2
318@Z8-11241h px 
Ã
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
add1min_btn2
wire2F
BC:/Users/thuyh/OneDrive/Documents/add/add.srcs/sources_1/new/add.v2
328@Z8-11241h px 
Û
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
control_out2
wire2^
ZC:/Users/thuyh/OneDrive/Documents/control_all/control_all.srcs/sources_1/new/control_all.v2
288@Z8-11241h px 
Ñ
.'%s' is already implicitly declared on line %s5153*oasys2
control_out2
282^
ZC:/Users/thuyh/OneDrive/Documents/control_all/control_all.srcs/sources_1/new/control_all.v2
298@Z8-8895h px 
®
empty port in %s declaration5656*oasys2
module2X
TC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_sum.v2
248@Z8-9398h px 
á
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
control_out2
wire2d
`C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/digital_clock.v2
338@Z8-11241h px 
×
.'%s' is already implicitly declared on line %s5153*oasys2
control_out2
332d
`C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/digital_clock.v2
378@Z8-8895h px 
Ã
synthesizing module '%s'%s4497*oasys2
digital_clock2
 2d
`C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/digital_clock.v2
238@Z8-6157h px 
»
synthesizing module '%s'%s4497*oasys2
control_all2
 2^
ZC:/Users/thuyh/OneDrive/Documents/control_all/control_all.srcs/sources_1/new/control_all.v2
238@Z8-6157h px 
«
synthesizing module '%s'%s4497*oasys2	
control2
 2R
NC:/Users/thuyh/OneDrive/Documents/control/control.srcs/sources_1/new/control.v2
238@Z8-6157h px 

synthesizing module '%s'%s4497*oasys2
RisingEdgeDetector2
 22
.C:/Users/thuyh/OneDrive/Documents/Risingedge.v2
238@Z8-6157h px 
­
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RisingEdgeDetector2
 2
02
122
.C:/Users/thuyh/OneDrive/Documents/Risingedge.v2
238@Z8-6155h px 
Â
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
control2
 2
02
12R
NC:/Users/thuyh/OneDrive/Documents/control/control.srcs/sources_1/new/control.v2
238@Z8-6155h px 

synthesizing module '%s'%s4497*oasys2
add2
 2F
BC:/Users/thuyh/OneDrive/Documents/add/add.srcs/sources_1/new/add.v2
238@Z8-6157h px 
²
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add2
 2
02
12F
BC:/Users/thuyh/OneDrive/Documents/add/add.srcs/sources_1/new/add.v2
238@Z8-6155h px 
£
synthesizing module '%s'%s4497*oasys2
reset2
 2L
HC:/Users/thuyh/OneDrive/Documents/reset/reset.srcs/sources_1/new/reset.v2
238@Z8-6157h px 
º
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
reset2
 2
02
12L
HC:/Users/thuyh/OneDrive/Documents/reset/reset.srcs/sources_1/new/reset.v2
238@Z8-6155h px 
­
synthesizing module '%s'%s4497*oasys2
	create1hz2
 2R
NC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/create1hz.v2
238@Z8-6157h px 
Ä
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	create1hz2
 2
02
12R
NC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/create1hz.v2
238@Z8-6155h px 
Ò
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control_all2
 2
02
12^
ZC:/Users/thuyh/OneDrive/Documents/control_all/control_all.srcs/sources_1/new/control_all.v2
238@Z8-6155h px 
²
synthesizing module '%s'%s4497*oasys2
counter_all2
 2U
QC:/Users/thuyh/OneDrive/Documents/function/function.srcs/sources_1/new/function.v2
238@Z8-6157h px 
­
synthesizing module '%s'%s4497*oasys2	
counter2
 2T
PC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter.v2
238@Z8-6157h px 
©
synthesizing module '%s'%s4497*oasys2
pause2
 2R
NC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/pause.v2
238@Z8-6157h px 
À
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pause2
 2
02
12R
NC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/pause.v2
238@Z8-6155h px 
µ
synthesizing module '%s'%s4497*oasys2
counter_sum2
 2X
TC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_sum.v2
238@Z8-6157h px 

ignoring empty port308*oasys2X
TC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_sum.v2
248@Z8-308h px 
Ì
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter_sum2
 2
02
12X
TC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_sum.v2
238@Z8-6155h px 
ø
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
counter_sum12
counter_sum2
52
42T
PC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter.v2
328@Z8-7023h px 
·
synthesizing module '%s'%s4497*oasys2
counter_hour2
 2Y
UC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_hour.v2
238@Z8-6157h px 
Î
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter_hour2
 2
02
12Y
UC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_hour.v2
238@Z8-6155h px 
µ
synthesizing module '%s'%s4497*oasys2
counter_min2
 2X
TC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_min.v2
238@Z8-6157h px 
Ì
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter_min2
 2
02
12X
TC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_min.v2
238@Z8-6155h px 
»
synthesizing module '%s'%s4497*oasys2
counter_second2
 2[
WC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_second.v2
238@Z8-6157h px 
Ò
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter_second2
 2
02
12[
WC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_second.v2
238@Z8-6155h px 
Ä
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
counter2
 2
02
12T
PC:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter.v2
238@Z8-6155h px 
§
synthesizing module '%s'%s4497*oasys2
normal2
 2O
KC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal.v2
238@Z8-6157h px 
¯
synthesizing module '%s'%s4497*oasys2

normal_sum2
 2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
238@Z8-6157h px 
È
8referenced signal '%s' should be on the sensitivity list567*oasys2
counter_sum2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
288@Z8-567h px 
Æ
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

normal_sum2
 2
02
12S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
238@Z8-6155h px 
±
synthesizing module '%s'%s4497*oasys2
normal_hour2
 2T
PC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_hour.v2
238@Z8-6157h px 
È
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
normal_hour2
 2
02
12T
PC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_hour.v2
238@Z8-6155h px 
¯
synthesizing module '%s'%s4497*oasys2

normal_min2
 2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_min.v2
238@Z8-6157h px 
Æ
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

normal_min2
 2
02
12S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_min.v2
238@Z8-6155h px 
µ
synthesizing module '%s'%s4497*oasys2
normal_second2
 2V
RC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_second.v2
238@Z8-6157h px 
Ì
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
normal_second2
 2
02
12V
RC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_second.v2
238@Z8-6155h px 
¾
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
normal2
 2
02
12O
KC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal.v2
238@Z8-6155h px 
§
synthesizing module '%s'%s4497*oasys2
alarm2
 2P
LC:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alarm.v2
238@Z8-6157h px 
±
synthesizing module '%s'%s4497*oasys2

alarm_hour2
 2U
QC:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alarm_hour.v2
238@Z8-6157h px 
È
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

alarm_hour2
 2
02
12U
QC:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alarm_hour.v2
238@Z8-6155h px 
¯
synthesizing module '%s'%s4497*oasys2
	alarm_min2
 2T
PC:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alram_min.v2
238@Z8-6157h px 
Æ
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	alarm_min2
 2
02
12T
PC:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alram_min.v2
238@Z8-6155h px 
¾
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alarm2
 2
02
12P
LC:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alarm.v2
238@Z8-6155h px 
É
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter_all2
 2
02
12U
QC:/Users/thuyh/OneDrive/Documents/function/function.srcs/sources_1/new/function.v2
238@Z8-6155h px 
Å
synthesizing module '%s'%s4497*oasys2
screen_display2
 2e
aC:/Users/thuyh/OneDrive/Documents/screen_díplay/screen_díplay.srcs/sources_1/new/screen_display.v2
238@Z8-6157h px 
Ã
synthesizing module '%s'%s4497*oasys2
mux_3to1_hour2
 2d
`C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/mux_3to1_hour.v2
238@Z8-6157h px 
Ú
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux_3to1_hour2
 2
02
12d
`C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/mux_3to1_hour.v2
238@Z8-6155h px 
³
synthesizing module '%s'%s4497*oasys2

mux_3to12
 2Y
UC:/Users/thuyh/OneDrive/Documents/Mux_3_to_1/Mux_3_to_1.srcs/sources_1/new/mux_3to1.v2
238@Z8-6157h px 
Ê
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

mux_3to12
 2
02
12Y
UC:/Users/thuyh/OneDrive/Documents/Mux_3_to_1/Mux_3_to_1.srcs/sources_1/new/mux_3to1.v2
238@Z8-6155h px 
Í
synthesizing module '%s'%s4497*oasys2
bin2led7_2led_hour2
 2i
eC:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/bin2led7_2led_hour.v2
238@Z8-6157h px 
³
synthesizing module '%s'%s4497*oasys2

bin2led72
 2Y
UC:/Users/thuyh/OneDrive/Documents/week2_bai3/week2_bai3.srcs/sources_1/new/bin2led7.v2
228@Z8-6157h px 
Ê
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

bin2led72
 2
02
12Y
UC:/Users/thuyh/OneDrive/Documents/week2_bai3/week2_bai3.srcs/sources_1/new/bin2led7.v2
228@Z8-6155h px 
ä
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bin2led7_2led_hour2
 2
02
12i
eC:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/bin2led7_2led_hour.v2
238@Z8-6155h px 
¿
synthesizing module '%s'%s4497*oasys2
bin2led7_2led2
 2`
\C:/Users/thuyh/OneDrive/Documents/bin2_led7_2/bin2_led7_2.srcs/sources_1/new/bin2led7_2led.v2
238@Z8-6157h px 
Ö
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bin2led7_2led2
 2
02
12`
\C:/Users/thuyh/OneDrive/Documents/bin2_led7_2/bin2_led7_2.srcs/sources_1/new/bin2led7_2led.v2
238@Z8-6155h px 
Ü
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
screen_display2
 2
02
12e
aC:/Users/thuyh/OneDrive/Documents/screen_díplay/screen_díplay.srcs/sources_1/new/screen_display.v2
238@Z8-6155h px 
³
synthesizing module '%s'%s4497*oasys2
	led_alarm2
 2X
TC:/Users/thuyh/OneDrive/Documents/led_alarm/led_alarm.srcs/sources_1/new/led_alarm.v2
238@Z8-6157h px 
Ê
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	led_alarm2
 2
02
12X
TC:/Users/thuyh/OneDrive/Documents/led_alarm/led_alarm.srcs/sources_1/new/led_alarm.v2
238@Z8-6155h px 
Ú
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
digital_clock2
 2
02
12d
`C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/digital_clock.v2
238@Z8-6155h px 
¢
Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
clk_1hz_reg2
	create1hz2R
NC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/create1hz.v2
378@Z8-7137h px 

%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:19 . Memory (MB): peak = 1432.324 ; gain = 550.742
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
 
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1432.324 ; gain = 550.742
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1432.324 ; gain = 550.742
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
º
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0202

1432.3242
0.000Z17-268h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
>

Processing XDC Constraints
244*projectZ1-262h px 
=
Initializing timing engine
348*projectZ1-569h px 
s
Parsing XDC File [%s]
179*designutils22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc8Z20-179h px 

No ports matched '%s'.
584*	planAhead2

count[0]22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
238@Z12-584h px

"'%s' expects at least one object.
55*common2
set_property22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
238@Z17-55h px

No ports matched '%s'.
584*	planAhead2

count[1]22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
248@Z12-584h px

"'%s' expects at least one object.
55*common2
set_property22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
248@Z17-55h px

No ports matched '%s'.
584*	planAhead2

count[2]22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
258@Z12-584h px

"'%s' expects at least one object.
55*common2
set_property22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
258@Z17-55h px

No ports matched '%s'.
584*	planAhead2

count[3]22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
268@Z12-584h px

"'%s' expects at least one object.
55*common2
set_property22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
268@Z17-55h px

No ports matched '%s'.
584*	planAhead2
btn22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
298@Z12-584h px

"'%s' expects at least one object.
55*common2
set_property22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2
298@Z17-55h px
|
Finished Parsing XDC File [%s]
178*designutils22
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc8Z20-178h px 
Ñ
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project20
.C:/Users/thuyh/Downloads/Arty-Z7-20-Master.xdc2!
.Xil/digital_clock_propImpl.xdcZ1-236h px 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px 
¶
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1534.4732
0.000Z17-268h px 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px 
À
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0582

1534.4732
0.000Z17-268h px 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px 
¢
øFlow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Constraint Validation : Time (s): cpu = 00:00:23 ; elapsed = 00:00:53 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
8
%s
*synth2 
Loading part: xc7z020clg400-1
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
©
%s*synth2
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:23 ; elapsed = 00:00:54 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
­
%s*synth2
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:54 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
µ
!inferring latch for variable '%s'327*oasys2
counter_sum_reg2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-327h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:24 ; elapsed = 00:00:55 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
 
(
%s
*synth2
+---Adders : 
h p
x
 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input   26 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input   17 Bit       Adders := 3     
h p
x
 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
 
+
%s
*synth2
+---Registers : 
h p
x
 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	               26 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	               17 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	                7 Bit    Registers := 6     
h p
x
 
H
%s
*synth20
.	                6 Bit    Registers := 7     
h p
x
 
H
%s
*synth20
.	                5 Bit    Registers := 4     
h p
x
 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	                1 Bit    Registers := 30    
h p
x
 
'
%s
*synth2
+---Muxes : 
h p
x
 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input   26 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input   17 Bit        Muxes := 2     
h p
x
 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 5     
h p
x
 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 3     
h p
x
 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 10    
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
6
%s
*synth2
Start Part Resource Summary
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
ª
%s*synth2
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:01:08 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
¥
%s*synth2
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:39 ; elapsed = 00:01:21 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
4
%s
*synth2
Start Timing Optimization
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:01:22 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
3
%s
*synth2
Start Technology Mapping
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:01:22 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
-
%s
*synth2
Start IO Insertion
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:47 ; elapsed = 00:01:31 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
¢
%s*synth2
Finished Renaming Generated Instances : Time (s): cpu = 00:00:47 ; elapsed = 00:01:31 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[16]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[16]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[16]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[16]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[15]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[15]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[15]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[15]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[14]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[14]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[14]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[14]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[13]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[13]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[13]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[13]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[12]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[12]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[12]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[12]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[11]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[11]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[11]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[11]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[10]2
1st21
/counter_all1/normal1/sum1/counter_sum_reg[10]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
$counter_all1/normal1/counter_sum[10]2
2nd24
2counter_all1/normal1/sum1/counter_sum_reg[10]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[9]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[9]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[9]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[9]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[8]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[8]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[8]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[8]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[7]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[7]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[7]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[7]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[6]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[6]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[6]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[6]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[5]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[5]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[5]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[5]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[4]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[4]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[4]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[4]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[3]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[3]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[3]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[3]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[2]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[2]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[2]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[2]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[1]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[1]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[1]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[1]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[0]2
1st20
.counter_all1/normal1/sum1/counter_sum_reg[0]/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
408@Z8-6859h px 

2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
#counter_all1/normal1/counter_sum[0]2
2nd23
1counter_all1/normal1/sum1/counter_sum_reg[0]__0/Q2S
OC:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v2
308@Z8-6859h px 
2
%s
*synth2

Report Check Netlist: 
h p
x
 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
 
c
%s
*synth2K
I|      |Item              |Errors |Warnings |Status |Description       |
h p
x
 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
 
c
%s
*synth2K
I|1     |multi_driven_nets |      0|       17|Failed |Multi driven nets |
h p
x
 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:47 ; elapsed = 00:01:31 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Renaming Generated Ports : Time (s): cpu = 00:00:47 ; elapsed = 00:01:31 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
 
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:47 ; elapsed = 00:01:32 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Renaming Generated Nets : Time (s): cpu = 00:00:47 ; elapsed = 00:01:32 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
/
%s
*synth2

Report BlackBoxes: 
h p
x
 
8
%s
*synth2 
+-+--------------+----------+
h p
x
 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
 
8
%s
*synth2 
+-+--------------+----------+
h p
x
 
8
%s
*synth2 
+-+--------------+----------+
h p
x
 
/
%s*synth2

Report Cell Usage: 
h px 
2
%s*synth2
+------+-------+------+
h px 
2
%s*synth2
|      |Cell   |Count |
h px 
2
%s*synth2
+------+-------+------+
h px 
2
%s*synth2
|1     |BUFG   |     2|
h px 
2
%s*synth2
|2     |CARRY4 |   109|
h px 
2
%s*synth2
|3     |LUT1   |    51|
h px 
2
%s*synth2
|4     |LUT2   |   211|
h px 
2
%s*synth2
|5     |LUT3   |    71|
h px 
2
%s*synth2
|6     |LUT4   |   116|
h px 
2
%s*synth2
|7     |LUT5   |    64|
h px 
2
%s*synth2
|8     |LUT6   |    86|
h px 
2
%s*synth2
|9     |FDCE   |    60|
h px 
2
%s*synth2
|10    |FDPE   |     1|
h px 
2
%s*synth2
|11    |FDRE   |   163|
h px 
2
%s*synth2
|12    |LD     |    17|
h px 
2
%s*synth2
|13    |IBUF   |     5|
h px 
2
%s*synth2
|14    |OBUF   |    43|
h px 
2
%s*synth2
+------+-------+------+
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Writing Synthesis Report : Time (s): cpu = 00:00:47 ; elapsed = 00:01:32 . Memory (MB): peak = 1534.473 ; gain = 652.891
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
a
%s
*synth2I
GSynthesis finished with 0 errors, 34 critical warnings and 2 warnings.
h p
x
 

%s
*synth2
Synthesis Optimization Runtime : Time (s): cpu = 00:00:36 ; elapsed = 00:01:22 . Memory (MB): peak = 1534.473 ; gain = 550.742
h p
x
 

%s
*synth2
Synthesis Optimization Complete : Time (s): cpu = 00:00:47 ; elapsed = 00:01:32 . Memory (MB): peak = 1534.473 ; gain = 652.891
h p
x
 
B
 Translating synthesized netlist
350*projectZ1-571h px 
º
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0322

1534.4732
0.000Z17-268h px 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
126Z29-17h px 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px 
º
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1534.4732
0.000Z17-268h px 

!Unisim Transformation Summary:
%s111*project2I
G  A total of 17 instances were transformed.
  LD => LDCE: 17 instances
Z1-111h px 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

90cc0f5fZ4-1430h px 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832
142
392
0Z4-41h px 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px 
­
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:532

00:01:582

1534.4732

1071.699Z17-268h px 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px 
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0152

1534.4732
0.000Z17-268h px 
±
 The %s '%s' has been generated.
621*common2

checkpoint2^
\C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.runs/synth_1/digital_clock.dcpZ17-1381h px 

%s4*runtcl2r
pExecuting : report_utilization -file digital_clock_utilization_synth.rpt -pb digital_clock_utilization_synth.pb
h px 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Jun 11 11:39:05 2024Z17-206h px 


End Record