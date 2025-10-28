module Mux(


    input  [7:0] A, [7:0] B, [7:0] C, [7:0] D,
    input [1:0] select,
    output [7:0] Y
);
    
    assign is_zero  = ~select[0] && ~select[1]; // 0b00
    assign is_one   =  select[0] && ~select[1]; // 0b01
    assign is_two   = ~select[0] &&  select[1]; // 0b10
    assign is_three =  select[0] &&  select[1]; // 0b11

    assign Y = is_zero ? A :
               is_one ? B :
               is_two ? C :
               is_three ? D : 0;
endmodule
