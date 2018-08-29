# ####################################################################

#  Created by Encounter(R) RTL Compiler RC14.10 - v14.10-p008_1 on Sat Apr 07 15:32:41 +0530 2018

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design controller

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells slow_vdd1v0/HOLDX1]
