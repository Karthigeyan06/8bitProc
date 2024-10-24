module RAM (
    input wire clk,
    input wire we,
    input wire [7:0] addr,
    input wire [7:0] data_in,
    output reg [7:0] data_out
);

    reg [7:0] memory [255:0];

    always @(posedge clk) begin
        if (we) begin
            memory[addr] <= data_in;
        end else begin
            data_out <= memory[addr];
        end
    end

endmodule
