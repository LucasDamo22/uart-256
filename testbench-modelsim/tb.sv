`timescale 1ns/10ps
module tb;

// clock set for 100MHZ
    bit clock, reset;
    integer i;
    logic sig_rx, sig_tx, sig_rts_rx, sig_cts_tx;
    localparam PERIOD_100MHZ = 8;
    localparam sig_detecttime = 7000;
    initial
    begin
        reset = 1'b1;
        #10
        reset = 1'b0;
    end

    initial
    begin
        clock = 1'b1;
        forever #(PERIOD_100MHZ/2) clock = ~clock;
        
        
        // forever #((PERIOD_100MHZ/2)*868) rx_if.sig = ~rx_if.sig;
    end
    initial 
    begin
        sig_rts_rx = 'd48;
        //for(i = 0; i <)
        forever #(sig_detecttime) sig_rts_rx = ~sig_rts_rx;
    
    end



assign sig_rx = sig_rts_rx;
//assign sig_rx = ;

top DUT(.clock(clock), .reset(reset), .sig_rx(sig_rts_rx), .sig_tx(sig_tx)
        );
//.sig_rts_rx(sig_rts_rx), .sig_cts_tx(sig_cts_tx)
endmodule