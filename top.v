module top(

    input [15:0] sw,
    input btnC, btnD, btnR, btnU, btnL,
    output [15:0] led
    );
    wire [3:0] mux1Result;
    
    wire [3:0] libOut;
    wire [3:0] fireDepartmentOut;
    wire [3:0] schoolOut;
    wire [3:0] ribsShackOut;
    
    
    mux mux1(
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Enable(btnC),
        .Sel0(btnL),
        .Sel1(btnU),
        .Y(mux1Result)
    );
    
    demux demux1(
        .In(mux1Result),
        .Enable(btnC),
        .Sel0(btnD),
        .Sel1(btnR),
        .Y0(libOut),
        .Y1(fireDepartmentOut),
        .Y2(schoolOut),
        .Y3(ribsShackOut)
    );
    
    assign led[3:0] = libOut;
    assign led[7:4] = fireDepartmentOut;
    assign led[11:8] = schoolOut;
    assign led[15:12] = ribsShackOut;
    
endmodule
