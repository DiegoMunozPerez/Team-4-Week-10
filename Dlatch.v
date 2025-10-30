module Dlatch(

    input D, E,
    output reg Q, 
    output notQ
    
     );
     
     always @(D, E) begin
     
     if (E)
        if (D)
        Q <= 1;
        else 
        Q <= 0;
    end
        
        
    assign notQ = ~Q;
     
  
     
endmodule
