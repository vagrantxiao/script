set module_name "net0"
set file_list "net0.v\
               pi_arbiter.v\
               pi_cluster.v\ 
               pi_switch.v\ 
               direction_determiner.v\ 
               direction_params.vh\ 
               interface.v\ 
               SynFIFO.v\ 
               pipe_ff.v"

foreach file_name $file_list {
 add_files -norecurse ../../F001_static_32_leaves/src/$file_name
}
set logFileId [open ./runLoguser_${module_name}.log "w"]
set start_time [clock seconds]
set_param general.maxThreads  8 
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]
synth_design -top ${module_name} -part xczu9eg-ffvb1156-2-e -mode out_of_context
write_checkpoint -force ${module_name}_netlist_48.dcp
set end_time [clock seconds]
set total_seconds [expr $end_time - $start_time]
puts $logFileId "syn: $total_seconds seconds"
report_utilization -hierarchical > utilization.rpt
