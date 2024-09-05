
module count (
    input logic clk,       
    input logic rst,       
    output logic [3:0] val 
);
    // Registros internos
    reg [3:0] nval;

    // Proceso secuencial
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            val <= 4'b0000; 
        end else begin
            val <= nval;    
        end
    end

    always_comb begin
        nval = val + 1; 
    end

endmodule