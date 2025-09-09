#compile the SV files, make sure the order is correct
vlog -sv ./bin2bcd.sv
vlog -sv ./bin2bcd_tb.sv

#start simulation environment
vsim work.bin2bcd_tb -voptargs=+acc

#add signals to waveform window
add wave -position insertpoint  \
sim:/bin2bcd_tb/uut/binary \
sim:/bin2bcd_tb/uut/bcd \
sim:/bin2bcd_tb/uut/carry

#start the testbench
run 200ns