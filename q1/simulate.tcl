#compile the SV files, make sure the order is correct
vlog -sv ./decoder.sv
vlog -sv ./decoder_tb.sv

#start simulation environment
vsim work.decoder_tb -voptargs=+acc

#add signals to waveform window
add wave -position insertpoint  \
sim:/decoder_tb/uut/binary \
sim:/decoder_tb/uut/one_hot

#start the testbench
run 200ns