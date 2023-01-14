
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name half_adder_3_1 -dir "C:/Users/user/Desktop/Internship FIles/half_adder_3_1/half_adder_3_1/planAhead_run_3" -part xc6slx45tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/user/Desktop/Internship FIles/half_adder_3_1/half_adder_3_1/half_adder_3.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/user/Desktop/Internship FIles/half_adder_3_1/half_adder_3_1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "half_adder_3_1_pin_assignment.ucf" [current_fileset -constrset]
add_files [list {half_adder_3_1_pin_assignment.ucf}] -fileset [get_property constrset [current_run]]
link_design
