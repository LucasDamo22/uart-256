onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/DUT/clock
add wave -noupdate /tb/DUT/reset
add wave -noupdate -expand -group uart-tx-mod /tb/DUT/uart/uart_tx_inst/clk
add wave -noupdate -expand -group uart-tx-mod /tb/DUT/uart/uart_tx_inst/rstn
add wave -noupdate -expand -group uart-tx-mod /tb/DUT/uart/uart_tx_inst/state
add wave -noupdate -expand -group uart-tx-mod -radix unsigned /tb/DUT/uart/uart_tx_inst/data_r
add wave -noupdate -expand -group uart-tx-mod /tb/DUT/uart/uart_tx_inst/sig_r
add wave -noupdate -expand -group uart-tx-mod /tb/DUT/uart/uart_tx_inst/ready_r
add wave -noupdate -expand -group uart-tx-mod /tb/DUT/uart/uart_tx_inst/data_cnt
add wave -noupdate -expand -group uart-tx-mod -radix unsigned /tb/DUT/uart/uart_tx_inst/clk_cnt
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/clk
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/rstn
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/sampling_cnt
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/sig_q
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/sig_r
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/state
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/data_tmp_r
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/data_cnt
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/clk_cnt
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/rx_done
add wave -noupdate -expand -group uart-rx-mod -radix unsigned /tb/DUT/uart/uart_rx_inst/data_r
add wave -noupdate -expand -group uart-rx-mod /tb/DUT/uart/uart_rx_inst/valid_r
add wave -noupdate -group tx-tb /tb/tx_if/DATA_WIDTH
add wave -noupdate -group tx-tb /tb/tx_if/sig
add wave -noupdate -group tx-tb /tb/tx_if/data
add wave -noupdate -group tx-tb /tb/tx_if/valid
add wave -noupdate -group tx-tb /tb/tx_if/ready
add wave -noupdate -group tx /tb/DUT/tx/DATA_WIDTH
add wave -noupdate -group tx /tb/DUT/tx/sig
add wave -noupdate -group tx /tb/DUT/tx/data
add wave -noupdate -group tx /tb/DUT/tx/valid
add wave -noupdate -group tx /tb/DUT/tx/ready
add wave -noupdate -group rx-tb /tb/rx_if/DATA_WIDTH
add wave -noupdate -group rx-tb /tb/rx_if/sig
add wave -noupdate -group rx-tb /tb/rx_if/data
add wave -noupdate -group rx-tb /tb/rx_if/valid
add wave -noupdate -group rx-tb /tb/rx_if/ready
add wave -noupdate -group rx /tb/DUT/rx/DATA_WIDTH
add wave -noupdate -group rx /tb/DUT/rx/sig
add wave -noupdate -group rx /tb/DUT/rx/data
add wave -noupdate -group rx /tb/DUT/rx/valid
add wave -noupdate -group rx /tb/DUT/rx/ready
add wave -noupdate -group rxif /tb/DUT/uart/rxif/DATA_WIDTH
add wave -noupdate -group rxif /tb/DUT/uart/rxif/sig
add wave -noupdate -group rxif /tb/DUT/uart/rxif/data
add wave -noupdate -group rxif /tb/DUT/uart/rxif/valid
add wave -noupdate -group rxif /tb/DUT/uart/rxif/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {216470 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 128
configure wave -valuecolwidth 216
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
WaveRestoreZoom {0 ns} {526365 ns}
