#compile the SV files, make sure the order is correct
vlog -sv ./bin2gray.sv
vlog -sv ./bin2gray_tb.sv

#start simulation environment
vsim work.bin2gray_tb -voptargs=+acc

#add signals to waveform window
add wave -position insertpoint  \
sim:/bin2gray_tb/uut/binary \
sim:/bin2gray_tb/uut/gray

#start the testbench
run 200ns