
// Read-First Mode
//
module ram #(parameter 
             SIZE = 8)(clock, wr_en, addr, din, dout);
input clock;
input wr_en;
input [7:0] addr;
input [7:0] din;
output [7:0] dout;
reg [7:0] RAM [SIZE];
reg [7:0] dout;


always @(posedge clock) begin
        if (wr_en) begin
            RAM[addr]<=din;
        end
        dout <= RAM[addr];
end

endmodule