module control_unit(
    input [3:0] opcode, 
    output reg reg_write, 
    output reg alu_src, 
    output reg mem_read, 
    output reg mem_write, 
    output reg mem_to_reg, 
    output reg branch
);
    always @(*) begin
        case (opcode)
            4'b0001: begin  
                reg_write = 1;
                alu_src = 0;  
                mem_read = 0;
                mem_write = 0;
                mem_to_reg = 0;
                branch = 0;
            end
            4'b0010: begin  
                reg_write = 1;
                alu_src = 1;  
                mem_read = 1; 
                mem_write = 0;
                mem_to_reg = 1;
                branch = 0;
            end
            4'b0011: begin  
                reg_write = 0;
                alu_src = 1;  
                mem_read = 0;
                mem_write = 1; 
                mem_to_reg = 0;
                branch = 0;
            end
            4'b0100: begin  
                reg_write = 0;
                alu_src = 0;
                mem_read = 0;
                mem_write = 0;
                mem_to_reg = 0;
                branch = 1; 
            end
            default: begin  
                reg_write = 0;
                alu_src = 0;
                mem_read = 0;
                mem_write = 0;
                mem_to_reg = 0;
                branch = 0;
            end
        endcase
    end
endmodule
