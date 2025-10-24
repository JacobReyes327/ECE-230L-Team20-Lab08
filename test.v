`timescale 1ns/1ps

module test();
    wire [15:0] led;
    reg [15:0] sw;
    reg btnL, btnU, btnD, btnR, btnC;

    top uut(
        .led(led),
        .sw(sw),
        .btnL(btnL),
        .btnU(btnU),
        .btnD(btnD),
        .btnR(btnR),
        .btnC(btnC)
    );

    reg [4:0] i;
    
    wire [1:0] mult_sel;
    wire [1:0] demult_sel;
    
    wire [3:0] current_mult;
    wire [3:0] current_demult;
    
    assign mult_sel = {btnU, btnL};
    assign demult_sel = {btnR, btnD};
    
    assign current_mult = (sw >> (4 * mult_sel)) & 'hF;
    assign current_demult = (led >> (4 * demult_sel)) & 'hF;

    initial begin
        $dumpvars(0, test);
        sw = 'b0110_1010_0101_1001;
        btnL = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnC = 0;
        #10;
        btnC = 1;
        for (i = 0; i < 16; i = i + 1) begin
            #10;
            btnL = i[0];
            btnU = i[1];
            btnD = i[2];
            btnR = i[3];
            
            if (current_mult != current_demult) begin
                // If your simulation stops here
                // then your design fails the test!
                $display("Failed test!");
                $finish;
            end
        end
        #10 $finish;
    end
endmodule
