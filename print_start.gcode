; Start script
G28 ; home all without mesh bed level
G29 P3 ; Mesh leveling
G90 ; Absolute positioning
G1 X0.5 Y210.0 Z15 ; Move to left back corner with 15mm
M140 S{material_bed_temperature_layer_0} ; set bed temp
M104 S{material_print_temperature_layer_0} ; set extruder temp
M190 S{material_bed_temperature_layer_0} ; wait for bed temp
M109 S{material_print_temperature_layer_0} ; wait for extruder temp
G92 E0 ; reset extruder distance position
G90 ; Absolute positioning
G1 X0.5 Y210.0 Z{layer_height_0} ; Draw priming line
G1 X0.5 Y0.5 F750.0 E18 ; Draw priming line
G92 E0
;M150 R200 U255 B200
M300 s2800 p300
G90 ; Absolute positioning
