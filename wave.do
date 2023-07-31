onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/sig_rx
add wave -noupdate -expand -group top /tb/DUT/clock
add wave -noupdate -expand -group top /tb/DUT/reset
add wave -noupdate -expand -group top /tb/DUT/sig_rx
add wave -noupdate -expand -group top /tb/DUT/sig_tx
add wave -noupdate -expand -group top -radix binary /tb/DUT/mem_addr
add wave -noupdate -expand -group top /tb/DUT/EA
add wave -noupdate /tb/DUT/uart/clk
add wave -noupdate /tb/DUT/uart/rstn
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/clk
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/rstn
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/state
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/data_r
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/sig_r
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/ready_r
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/data_cnt
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/clk_cnt
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/clk
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/rstn
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/sampling_cnt
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/sig_q
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/sig_r
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/state
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/data_tmp_r
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/data_cnt
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/clk_cnt
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/rx_done
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/data_r
add wave -noupdate -group rx_inst /tb/DUT/uart/uart_rx_inst/valid_r
add wave -noupdate -group rxif /tb/DUT/uart/rxif/sig
add wave -noupdate -group rxif /tb/DUT/uart/rxif/data
add wave -noupdate -group rxif /tb/DUT/uart/rxif/valid
add wave -noupdate -group rxif /tb/DUT/uart/rxif/ready
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/sig
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/data
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/valid
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/ready
add wave -noupdate -expand /tb/DUT/mem/RAM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {491088 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 2000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ns} {1856800 ns}
