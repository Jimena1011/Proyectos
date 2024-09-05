module module_contador_tb;

    logic clk;
    logic rst;
    logic [3:0] val;

    count uut (
        .clk(clk),
        .rst(rst),
        .val(val)
    );

    always #5 clk = ~clk; 

    initial begin

        clk = 0;
        rst = 0;

        #10 rst = 1;
        #10 rst = 0;
        #10 rst = 1; 

        #100; 
        $finish;
    end

    initial begin
        $dumpfile("module_contador_tb.vcd");
        $dumpvars(0, module_contador_tb);
    end
    
endmodule
