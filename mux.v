module mux(
    input [3:0] A, [3:0] B, [3:0] C, [3:0] D,
    input Sel0, Sel1, Enable,
    output [3:0] Y, [1:0] Sel
    );
    
    assign Sel = {Sel1, Sel0};
    assign Y = ((Sel == 'b00) && Enable) ? A: 
    ((Sel == 'b01) && Enable) ? B: 
    ((Sel == 'b10) && Enable) ? C: 
                 D;            
 
    
endmodule

