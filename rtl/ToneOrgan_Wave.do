onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ToneOrgan_tb/clkSIM
add wave -noupdate /ToneOrgan_tb/selDo
add wave -noupdate /ToneOrgan_tb/selRe
add wave -noupdate /ToneOrgan_tb/selMi
add wave -noupdate /ToneOrgan_tb/selFa
add wave -noupdate /ToneOrgan_tb/selSo
add wave -noupdate /ToneOrgan_tb/selLa
add wave -noupdate /ToneOrgan_tb/selSi
add wave -noupdate /ToneOrgan_tb/selDO
add wave -noupdate /ToneOrgan_tb/resetSIM
add wave -noupdate /ToneOrgan_tb/outclkDo
add wave -noupdate /ToneOrgan_tb/outclkRe
add wave -noupdate /ToneOrgan_tb/outclkMi
add wave -noupdate /ToneOrgan_tb/outclkFa
add wave -noupdate /ToneOrgan_tb/outclkSo
add wave -noupdate /ToneOrgan_tb/outclkLa
add wave -noupdate /ToneOrgan_tb/outclkSi
add wave -noupdate /ToneOrgan_tb/outclkDO
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1296484946 ps} 0}
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
WaveRestoreZoom {0 ps} {8388608 ns}
