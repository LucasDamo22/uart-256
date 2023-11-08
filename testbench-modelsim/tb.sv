`timescale 1ns/1ps
module tb;

// clock set for 100MHZ
    bit clock, reset;
    integer i;
    logic sig_rx, sig_tx, sig_rts_rx, sig_cts_tx;
    localparam CLOCK_PERIOD = 5;
    localparam sig_detecttime = 8680;
    reg [7:0]serial_data[10:0];
    initial
    begin
        reset = 1'b1;
        #10
        reset = 1'b0;
    end
logic [3:0] cont;
    initial
    begin
        clock = 1'b1;
        serial_data[0] = 'd104;
        serial_data[1] = 'd101;
        serial_data[2] = 'd108;
        serial_data[3] = 'd108;
        serial_data[4] = 'd111;
        serial_data[5] = 'd009;
        serial_data[6] = 'd119;
        serial_data[7] = 'd111; 
        serial_data[8] = 'd114; 
        serial_data[9] = 'd108; 
        serial_data[10] = 'd100;  
        sig_rts_rx = 'b1;
        cont = 0;
        
    end

    always #(CLOCK_PERIOD/2.0) clock = ~clock;


assign sig_rx = sig_rts_rx;
//assign sig_rx = ;

always begin
    #30
    sig_rts_rx = 'b1;
    #(sig_detecttime* 5)
    //start bit
    #(sig_detecttime)
    sig_rts_rx = 'b0;
    //data
    #(sig_detecttime) sig_rts_rx = serial_data[cont][0];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][1];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][2];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][3];                  
    #(sig_detecttime) sig_rts_rx = serial_data[cont][4];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][5];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][6];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][7];
    #(sig_detecttime)
    cont = cont + 'b1;
    if(cont == 'd11) begin
        cont = 0;
    end

end

top DUT(.clock(clock), .reset(reset), .sig_rx(sig_rx), .sig_tx(sig_tx)
        );
//.sig_rts_rx(sig_rts_rx), .sig_cts_tx(sig_cts_tx)
endmodule