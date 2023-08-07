onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/sig_rx
add wave -noupdate -expand -group top /tb/DUT/clock
add wave -noupdate -expand -group top /tb/DUT/reset
add wave -noupdate -expand -group top /tb/DUT/sig_rx
add wave -noupdate -expand -group top /tb/DUT/sig_tx
add wave -noupdate -expand -group top -radix unsigned /tb/DUT/mem_addr
add wave -noupdate -expand -group top /tb/DUT/EA
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/sig
add wave -noupdate -expand -group txif -radix unsigned /tb/DUT/uart/txif/data
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/valid
add wave -noupdate -expand -group txif /tb/DUT/uart/txif/ready
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/clk
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/rstn
add wave -noupdate -group tx_inst /tb/DUT/uart/uart_tx_inst/state
add wave -noupdate -group tx_inst -radix unsigned /tb/DUT/uart/uart_tx_inst/data_r
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
add wave -noupdate -group rxif -radix unsigned /tb/DUT/uart/rxif/data
add wave -noupdate -group rxif /tb/DUT/uart/rxif/valid
add wave -noupdate -group rxif /tb/DUT/uart/rxif/ready
add wave -noupdate -expand -group ram /tb/DUT/mem/SIZE
add wave -noupdate -expand -group ram /tb/DUT/mem/clock
add wave -noupdate -expand -group ram /tb/DUT/mem/wr_en
add wave -noupdate -expand -group ram /tb/DUT/mem/addr
add wave -noupdate -expand -group ram -radix unsigned /tb/DUT/mem/din
add wave -noupdate -expand -group ram -radix binary /tb/DUT/mem/dout
add wave -noupdate -expand -group ram -radix unsigned -childformat {{{/tb/DUT/mem/RAM[0]} -radix unsigned} {{/tb/DUT/mem/RAM[1]} -radix unsigned} {{/tb/DUT/mem/RAM[2]} -radix unsigned} {{/tb/DUT/mem/RAM[3]} -radix unsigned} {{/tb/DUT/mem/RAM[4]} -radix unsigned} {{/tb/DUT/mem/RAM[5]} -radix unsigned} {{/tb/DUT/mem/RAM[6]} -radix unsigned} {{/tb/DUT/mem/RAM[7]} -radix unsigned}} -subitemconfig {{/tb/DUT/mem/RAM[0]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[1]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[2]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[3]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[4]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[5]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[6]} {-height 16 -radix unsigned} {/tb/DUT/mem/RAM[7]} {-height 16 -radix unsigned}} /tb/DUT/mem/RAM
add wave -noupdate -expand -group tb_data -radix unsigned -childformat {{{/tb/serial_data[7]} -radix unsigned -childformat {{{/tb/serial_data[7][7]} -radix unsigned} {{/tb/serial_data[7][6]} -radix unsigned} {{/tb/serial_data[7][5]} -radix unsigned} {{/tb/serial_data[7][4]} -radix unsigned} {{/tb/serial_data[7][3]} -radix unsigned} {{/tb/serial_data[7][2]} -radix unsigned} {{/tb/serial_data[7][1]} -radix unsigned} {{/tb/serial_data[7][0]} -radix unsigned}}} {{/tb/serial_data[6]} -radix unsigned} {{/tb/serial_data[5]} -radix unsigned} {{/tb/serial_data[4]} -radix unsigned} {{/tb/serial_data[3]} -radix unsigned} {{/tb/serial_data[2]} -radix unsigned} {{/tb/serial_data[1]} -radix unsigned} {{/tb/serial_data[0]} -radix unsigned -childformat {{{/tb/serial_data[0][7]} -radix unsigned} {{/tb/serial_data[0][6]} -radix unsigned} {{/tb/serial_data[0][5]} -radix unsigned} {{/tb/serial_data[0][4]} -radix unsigned} {{/tb/serial_data[0][3]} -radix unsigned} {{/tb/serial_data[0][2]} -radix unsigned} {{/tb/serial_data[0][1]} -radix unsigned} {{/tb/serial_data[0][0]} -radix unsigned}}}} -expand -subitemconfig {{/tb/serial_data[7]} {-height 16 -radix unsigned -childformat {{{/tb/serial_data[7][7]} -radix unsigned} {{/tb/serial_data[7][6]} -radix unsigned} {{/tb/serial_data[7][5]} -radix unsigned} {{/tb/serial_data[7][4]} -radix unsigned} {{/tb/serial_data[7][3]} -radix unsigned} {{/tb/serial_data[7][2]} -radix unsigned} {{/tb/serial_data[7][1]} -radix unsigned} {{/tb/serial_data[7][0]} -radix unsigned}}} {/tb/serial_data[7][7]} {-radix unsigned} {/tb/serial_data[7][6]} {-radix unsigned} {/tb/serial_data[7][5]} {-radix unsigned} {/tb/serial_data[7][4]} {-radix unsigned} {/tb/serial_data[7][3]} {-radix unsigned} {/tb/serial_data[7][2]} {-radix unsigned} {/tb/serial_data[7][1]} {-radix unsigned} {/tb/serial_data[7][0]} {-radix unsigned} {/tb/serial_data[6]} {-height 16 -radix unsigned} {/tb/serial_data[5]} {-height 16 -radix unsigned} {/tb/serial_data[4]} {-height 16 -radix unsigned} {/tb/serial_data[3]} {-height 16 -radix unsigned} {/tb/serial_data[2]} {-height 16 -radix unsigned} {/tb/serial_data[1]} {-height 16 -radix unsigned} {/tb/serial_data[0]} {-height 16 -radix unsigned -childformat {{{/tb/serial_data[0][7]} -radix unsigned} {{/tb/serial_data[0][6]} -radix unsigned} {{/tb/serial_data[0][5]} -radix unsigned} {{/tb/serial_data[0][4]} -radix unsigned} {{/tb/serial_data[0][3]} -radix unsigned} {{/tb/serial_data[0][2]} -radix unsigned} {{/tb/serial_data[0][1]} -radix unsigned} {{/tb/serial_data[0][0]} -radix unsigned}}} {/tb/serial_data[0][7]} {-radix unsigned} {/tb/serial_data[0][6]} {-radix unsigned} {/tb/serial_data[0][5]} {-radix unsigned} {/tb/serial_data[0][4]} {-radix unsigned} {/tb/serial_data[0][3]} {-radix unsigned} {/tb/serial_data[0][2]} {-radix unsigned} {/tb/serial_data[0][1]} {-radix unsigned} {/tb/serial_data[0][0]} {-radix unsigned}} /tb/serial_data
add wave -noupdate /tb/sig_rts_rx
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {209457242 ns} 0}
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
WaveRestoreZoom {208677113 ns} {210108817 ns}
