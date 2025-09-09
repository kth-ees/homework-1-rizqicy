#compile the SV files, make sure the order is correct
vlog -sv ./arithmetic_right_shifter.sv
vlog -sv ./arithmetic_right_shifter_tb.sv

#start simulation environment
vsim -debugDB work.arithmetic_right_shifter_tb -voptargs=+acc

#add signals to waveform window
add wave -position insertpoint  \
sim:/arithmetic_right_shifter_tb/uut/input_data \
sim:/arithmetic_right_shifter_tb/uut/control \
sim:/arithmetic_right_shifter_tb/uut/shifted_result

#start the testbench
run 200ns