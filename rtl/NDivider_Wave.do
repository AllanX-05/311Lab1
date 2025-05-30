onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /NDivider_tb/clkSIM
add wave -noupdate /NDivider_tb/outclk2
add wave -noupdate /NDivider_tb/outclk3
add wave -noupdate /NDivider_tb/outclk4
add wave -noupdate -radix decimal /NDivider_tb/divisor2
add wave -noupdate -radix decimal /NDivider_tb/divisor3
add wave -noupdate -radix decimal /NDivider_tb/divisor4
add wave -noupdate /NDivider_tb/resetSIM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {450560 ps}
