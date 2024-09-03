# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.runs/synth_1/.Xil/Vivado-448-DESKTOP-QVN4KUM/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7z020clg400-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib
    rt::set_parameter defaultVhdlWorkLib xil_defaultlib

    rt::set_parameter loadVhdl2008Libs false
    rt::set_parameter loadVhdl2019Libs false
    rt::set_parameter deferParseUntilElab true
    rt::set_parameter sortHdlCommandLine true
    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog {
      C:/Users/thuyh/OneDrive/Documents/Risingedge.v
      C:/Users/thuyh/OneDrive/Documents/add/add.srcs/sources_1/new/add.v
      C:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alarm.v
      C:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alarm_hour.v
      C:/Users/thuyh/OneDrive/Documents/alarm/project_5.srcs/sources_1/new/alram_min.v
      C:/Users/thuyh/OneDrive/Documents/week2_bai3/week2_bai3.srcs/sources_1/new/bin2led7.v
      C:/Users/thuyh/OneDrive/Documents/bin2_led7_2/bin2_led7_2.srcs/sources_1/new/bin2led7_2led.v
      C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/bin2led7_2led_hour.v
      C:/Users/thuyh/OneDrive/Documents/control/control.srcs/sources_1/new/control.v
      C:/Users/thuyh/OneDrive/Documents/control_all/control_all.srcs/sources_1/new/control_all.v
      C:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter.v
      C:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_hour.v
      C:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_min.v
      C:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_second.v
      C:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/counter_sum.v
      C:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/create1hz.v
      C:/Users/thuyh/OneDrive/Documents/function/function.srcs/sources_1/new/function.v
      C:/Users/thuyh/OneDrive/Documents/led_alarm/led_alarm.srcs/sources_1/new/led_alarm.v
      C:/Users/thuyh/OneDrive/Documents/Mux_3_to_1/Mux_3_to_1.srcs/sources_1/new/mux_3to1.v
      C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/mux_3to1_hour.v
      C:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal.v
      C:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_hour.v
      C:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_min.v
      C:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_second.v
      C:/Users/thuyh/OneDrive/Documents/normal/normal.srcs/sources_1/new/normal_sum.v
      C:/Users/thuyh/OneDrive/Documents/counter_/counter_.srcs/sources_1/new/pause.v
      C:/Users/thuyh/OneDrive/Documents/reset/reset.srcs/sources_1/new/reset.v
      C:/Users/thuyh/OneDrive/Documents/screen_d�play/screen_d�play.srcs/sources_1/new/screen_display.v
      C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.srcs/sources_1/new/digital_clock.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.runs/synth_1/.Xil/Vivado-448-DESKTOP-QVN4KUM/realtime/digital_clock_synth.xdc
    rt::sdcChecksum
    set rt::top digital_clock
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.cache/wt}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/thuyh/OneDrive/Documents/digital_clock/digital_clock.runs/synth_1/.Xil/Vivado-448-DESKTOP-QVN4KUM/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    rt::set_parameter incrementalOnCache ""
    rt::set_parameter doIncremental false
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
