module top(

    input [15:0]sw, 
    input btnC,
    output [15:0] led
 );
 
 
    Dlatch utt(
    
    .E(btnC),
    .D(sw[0]),
    .Q(led[0]),
    .notQ(led[1])
    
    );
    
    
    memory_system f(
    
    .data(sw[15:8]),
    .store(btnC),
    .addr(sw[7:6]),
    .memory(led[15:8])
    
);
 
 
endmodule
