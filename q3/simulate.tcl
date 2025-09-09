#compile the SV files, make sure the order is correct
vlog -sv ./adder_4.sv
vlog -sv ./csa_8.sv
vlog -sv ./csa_8_tb.sv

#start simulation environment
vsim work.csa_8_tb -voptargs=+acc

#add signals to waveform window
add wave -position insertpoint  \
sim:/csa_8_tb/uut/a \
sim:/csa_8_tb/uut/b \
sim:/csa_8_tb/uut/sum \
sim:/csa_8_tb/uut/carry

add wave -position insertpoint  \
sim:/csa_8_tb/uut/adder0_3/A \
sim:/csa_8_tb/uut/adder0_3/B \
sim:/csa_8_tb/uut/adder0_3/sum \
sim:/csa_8_tb/uut/adder0_3/carry

add wave -position insertpoint  \
sim:/csa_8_tb/uut/adder4_7_c0/A \
sim:/csa_8_tb/uut/adder4_7_c0/B \
sim:/csa_8_tb/uut/adder4_7_c0/sum \
sim:/csa_8_tb/uut/adder4_7_c0/carry

add wave -position insertpoint  \
sim:/csa_8_tb/uut/adder4_7_c1/A \
sim:/csa_8_tb/uut/adder4_7_c1/B \
sim:/csa_8_tb/uut/adder4_7_c1/sum \
sim:/csa_8_tb/uut/adder4_7_c1/carry

#start the testbench
run 500ns