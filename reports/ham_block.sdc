# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue May 19 14:00:48 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design hamming_main

set_load -pin_load 0.15 [get_ports {out[11]}]
set_load -pin_load 0.15 [get_ports {out[10]}]
set_load -pin_load 0.15 [get_ports {out[9]}]
set_load -pin_load 0.15 [get_ports {out[8]}]
set_load -pin_load 0.15 [get_ports {out[7]}]
set_load -pin_load 0.15 [get_ports {out[6]}]
set_load -pin_load 0.15 [get_ports {out[5]}]
set_load -pin_load 0.15 [get_ports {out[4]}]
set_load -pin_load 0.15 [get_ports {out[3]}]
set_load -pin_load 0.15 [get_ports {out[2]}]
set_load -pin_load 0.15 [get_ports {out[1]}]
set_load -pin_load 0.15 [get_ports {out[0]}]
set_clock_gating_check -setup 0.0 
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {mess[7]}]
set_input_transition 0.12 [get_ports {mess[6]}]
set_input_transition 0.12 [get_ports {mess[5]}]
set_input_transition 0.12 [get_ports {mess[4]}]
set_input_transition 0.12 [get_ports {mess[3]}]
set_input_transition 0.12 [get_ports {mess[2]}]
set_input_transition 0.12 [get_ports {mess[1]}]
set_input_transition 0.12 [get_ports {mess[0]}]
set_wire_load_mode "enclosed"
