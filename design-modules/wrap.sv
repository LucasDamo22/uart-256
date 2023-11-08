module wrap(

    input bit clock_p, clock_n,
    input bit reset,    
    input bit sig_rx,                   // serial input wire
    output bit sig_tx,                  // serial output wire
    output logic [1:0]states_led        // state indicator led

);

IBUFDS CLK_IBUFDS (.I(clock_p), .IB(clock_n), .O(clock));
top top (.clock(clock), .reset(reset),.sig_rx(sig_rx), .sig_tx(sig_tx), .states_led(states_led));

endmodule