vlib work
vmap work work

vlog -work work -sv ./design-modules/if/uart_if.sv
vlog -work work -sv ./design-modules/top.sv
vlog -work work -sv ./design-modules/uart.sv
vlog -work work -sv ./design-modules/uart_rx.sv
vlog -work work -sv ./design-modules/uart_tx.sv
vlog -work work -sv ./design-modules/mem.sv
vlog -work work -sv ./testbench-modelsim/tb.sv 



#vlog -work work -sv ./FPGA-special-modules/edge_detector.sv
#vlog -work work -v ./FPGA-special-modules/dspl_drv_NexysA7.v

vsim -voptargs=+acc=lprn -t ns work.tb

do wave.do

run 65 ms
