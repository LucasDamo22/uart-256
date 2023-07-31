
module top(
    //ports
    input bit clock,
    input bit reset,

    input bit sig_rx,
    output bit sig_tx,
    output logic [5:0]states_led


    //input bit sig_rts_rx,
    //output bit sig_cts_tx
    
    // uart_if rx,
    // uart_if tx
    
    
);
localparam  MEM_SIZE = 35;
logic [7:0]  mem_addr, cr, lf, data_tx;
logic [5:0] colors;


//logic [7:0] in_buff [3:0];


initial begin
    mem_addr = 3'b0;
    rx.ready = 'b0;
    tx.valid = 'b0;
    
end

    typedef enum integer { 
        idle = 0,
        init = 1,
        receiving = 2,
        pre_sending = 3,
        sending = 4,
        pre_receiving = 5,
        new_line = 6
        
    } states;

states EA = idle;

always @(posedge clock) begin
    if(~reset) begin
        case(EA) 


            idle: begin
                EA <= init;
            end


            init: begin
                EA <= receiving;
                rx.ready <= 'b1;
                tx.valid <= 'b0;
            end

            receiving: begin
                colors <= 'b100100;
                
                if(rx.valid == 'b1) begin
                    mem_addr <= mem_addr + 3'b001;
                    if(mem_addr == MEM_SIZE) begin
                        mem_addr <= '0;
                        rx.ready <= 'b0;
                        tx.valid <= 'b1;
                        EA <= pre_sending;
                    end else begin
                       
                        EA <= receiving;
                    end
                end
            end
            sending: begin
                colors <= 'b010010;
                if(tx.ready == 'b1) begin
                    mem_addr <= mem_addr + 3'b001;
                    if(mem_addr == MEM_SIZE) begin
                        mem_addr <= '0;
                        rx.ready <= 'b1;
                        tx.valid <= 'b0;
                        EA <= pre_receiving;
                    end else begin
                    
                    EA <= sending;
                end
                end
            end
            pre_receiving: begin
                EA <= receiving;
            end
            pre_sending: begin
                EA <= sending;
            end
            new_line: begin
            
            end
        endcase
    end else begin
        EA <= idle;
        mem_addr <= '0;
        colors <= 'b111111;
    end
end
    


always_comb begin
    sig_tx = tx.sig; // serial exit
    rx.sig = sig_rx; // serial in
    states_led = colors;
end
uart_if #(8) tx();
uart_if #(8) rx();


ram #(MEM_SIZE)mem( .clock      (clock),
                    .wr_en      (rx.valid),
                    .addr       (mem_addr),
                    .din        (rx.data),
                    .dout       (tx.data));

uart #(8, 115200, 100_000_000 ) uart (
    .rxif       (rx),
    .txif       (tx),
    .clk        (clock),
    .rstn       (~reset)
);





endmodule
