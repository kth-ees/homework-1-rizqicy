#compile the SV files, make sure the order is correct
vlog -sv ./count_1.sv
vlog -sv ./count_1_tb.sv

#start simulation environment
vsim work.count_1_tb -voptargs=+acc

#add signals to waveform window
add wave -position insertpoint  \
sim:/count_1_tb/uut/a \
sim:/count_1_tb/uut/out

#start the testbench
run 200ns