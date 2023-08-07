
module top(
    //ports
    input bit clock,
    input bit reset,

    input bit sig_rx,                   // serial input wire
    output bit sig_tx,                  // serial output wire
    output logic [5:0]states_led        // state indicator led
    
    
);
localparam  MEM_SIZE = 255;
logic [7:0]  mem_addr;
logic [5:0] colors;


initial begin
    mem_addr = 3'b0;
    rx.ready = 'b0;
    tx.valid = 'b0;    
end

/*  STATES MACHINE  */
    typedef enum integer { 
        idle = 0,
        init = 1,
        receiving = 2,
        pre_sending = 3,
        sending = 4,
        pre_receiving = 5,
        mem_dout_time = 8
    } states;

states EA = idle; // initial state

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
                colors <= 'b100100;                             // state indicator
                
                if(rx.valid == 'b1 && rx.ready == 'b1) begin    // if it is receiving data and the data has finished unserializing, next mem_address
                    mem_addr <= mem_addr + 3'b001;
                    if(mem_addr == (MEM_SIZE-1)) begin          // if we filled the memory the entire memory, all the data will be serialized out

                        mem_addr <= 'b0;        //go the beginning of the mem
                        rx.ready <= 'b0;        //turn the receiver off
                        EA <= mem_dout_time;    //wait for the memory to set the data_out
                    end else begin
                       
                        EA <= receiving;
                    end
                end
            end
            sending: begin
                colors <= 'b010010;                             // state indicator

                if(tx.ready == 'b1) begin                       // if it is sending data and the data has finished serializing the data, next mem_address
                    mem_addr <= mem_addr + 3'b001;
                    EA <= mem_dout_time;                        // it is needed to wait 1 clock cycle for the memory to send the next data_out, so we need an extra state
                    if(mem_addr == (MEM_SIZE -2) ) begin        // if we reach the the
                        tx.valid <='b0;
                    end
                    if(mem_addr == (MEM_SIZE-1)) begin
                        mem_addr <= 'b0;
                        rx.ready <= 'b1;
                        tx.valid <= 'b0;
                        EA <= pre_receiving;
                    end else begin
                    
                    EA <= sending;
                end
                end
            end
            pre_receiving: begin                                // another timing state for the memory to set the correct data_out
                EA <= receiving;
            end
            mem_dout_time: begin                                //wait for the memory to set the data_out
                EA <= pre_sending;
            end
            pre_sending:begin                                   // gets the first data corectly, after the state change                             
                tx.valid <= 'b1;    
                EA <= sending;
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

    //interfaces for the UART module
uart_if #(8) tx(); 
uart_if #(8) rx();


ram #(MEM_SIZE)mem( .clock      (clock),
                    .wr_en      (rx.valid && rx.ready), // allow to write data when it is receiving, and finished serializing the data
                    .addr       (mem_addr),
                    .din        (rx.data),              // always connected to the receiver_out
                    .dout       (tx.data));             // always connected to the transmitter_in 

uart #(8, 115200, 100_000_000 ) uart (
    .rxif       (rx),
    .txif       (tx),
    .clk        (clock),
    .rstn       (~reset)
);





endmodule
