
module top(
    //ports
    input bit clock,
    input bit reset,

    input bit sig_rx,
    output bit sig_tx

    //input bit sig_rts_rx,
    //output bit sig_cts_tx
    
    // uart_if rx,
    // uart_if tx
    
);
logic [7:0] data_tx, data_rx, mem_addr;
logic validtx, validrx,readytx, readyrx;

    typedef enum integer { 
        idle = 0,
        receiving = 1,
        sending = 2
    } states;
    



//assign readyrx = sig_rts_rx;
//assign sig_cts_tx = validrx;
initial begin
    //data_rx = 'd48;
    data_test = 'd48;
    validtx = 'b1;
    readyrx = 'b1;
end



    always_comb begin 
        if(reset)begin
            data_rx = 'd48;
        end
        sig_tx = tx.sig;
        tx.data = data_rx;
        readytx = tx.ready;
        tx.valid = validrx; // quando rx termina de receber o byte, ele levata o valid, e o valid ativa a transmissao
        
        rx.sig = sig_rx;
        data_rx = rx.data;
        rx.ready = readyrx;
        validrx = rx.valid;
    end

    
    uart_if #(8) tx();
    uart_if #(8) rx();
// assign rx.ready = 'b1;
// assign tx.valid = 'b1;

ram mem(.clock      (clock),
        .reset      (reset),
        .wr_en      (validrx),
        .addr       (mem_addr),
        .din        (data_rx),
        .dout       (data_tx));

uart #(8, 115200, 100_000_000 ) uart (
    .rxif       (rx),
    .txif       (tx),
    .clk        (clock),
    .rstn       (~reset)
);



endmodule
