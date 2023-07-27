`timescale 1ns/10ps
module tb;

// clock set for 100MHZ
    bit clock, reset;
    localparam PERIOD_100MHZ = 8;
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
// actual tb
//     initial
//     begin
//         #20
        
//         rx_if.ready = 'b1;

//         tx_if.data  = 'b10101010;
//         #8
//         tx_if.valid = 'b1;
//         #80000
//         tx_if.data = 'b10100000;
//         #160000
//         tx_if.data  = 'b10101010;

//     end

// assign rx_if.sig = tx_if.sig;

//  uart_if  #(8) rx_if();
//  uart_if  #(8) tx_if();

// top DUT(.clock(clock), .reset(~reset), .tx(tx_if), .rx(rx_if));
logic sig_rx, sig_tx, sig_rts_rx, sig_cts_tx;
initial begin
    sig_rts_rx = 'b1;
    #40000
    sig_rts_rx = 'b0;
end


assign sig_rx =  sig_tx;
//assign sig_rx = ;

top DUT(.clock(clock), .reset(reset), .sig_rx(sig_rx), .sig_tx(sig_tx)
        );
//.sig_rts_rx(sig_rts_rx), .sig_cts_tx(sig_cts_tx)
endmodule;