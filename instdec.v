module instruction_decoder(
    input [7:0] instruction,
    output reg [3:0] opcode,
    output reg [2:0] rs,
    output reg [2:0] rt,
    output reg [2:0] rd,
    output reg [7:0] immediate
);

    always @(*) begin
        opcode = instruction[7:4];
        rs = instruction[3:1];
        rt = instruction[0];
        rd = instruction[2:0];

        if (opcode == 4'b0010 || opcode == 4'b0011) begin
            immediate = instruction[7:0];
        end else begin
            immediate = 8'b0;
        end
    end

endmodule
