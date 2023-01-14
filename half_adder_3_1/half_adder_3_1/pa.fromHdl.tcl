
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name half_adder_3_1 -dir "C:/Users/user/Desktop/Internship FIles/half_adder_3_1/half_adder_3_1/planAhead_run_2" -part xc6slx45tfgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "half_adder_3_1_pin_assignment.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {half_adder_3_1.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top half_adder_3 $srcset
add_files [list {half_adder_3_1_pin_assignment.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45tfgg484-3
