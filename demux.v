module demux(
    input [3:0] In,
    input Sel0, Sel1, Enable,
    output [1:0] Sel, [3:0] Y0, [3:0] Y1, [3:0] Y2, [3:0] Y3
    );
    
    assign Sel = {Sel1, Sel0};
    assign Y0 = (Sel == 'b00 && Enable ? In : 'b0000);
    assign Y1 = (Sel == 'b01 && Enable ? In : 'b0000);
    assign Y2 = (Sel == 'b10 && Enable ? In : 'b0000);
    assign Y3 = (Sel == 'b11 && Enable ? In : 'b0000);
    
endmodule
