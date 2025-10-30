module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);


    wire [1:0] address;
    wire [7:0] z [3:0]; 
    assign address = addr;
   DeMux ut(
    
   .data(data),
   .sel(address),
   .A(z[0]),
   .B(z[1]),
   .C(z[2]),
   .D(z[3])
);
    wire arr[3:0];
    
    Demux2 u(
    
    .data(store),
    .sel(address),
    .A(arr[0]),
    .B(arr[1]),
    .C(arr[2]),
    .D(arr[3])
 
);
     wire [7:0] x [3:0];
    byte_memory t(
    
    .data(z[0]),
    .store(arr[0]),
    .memory(x[0])
    
    
);
    byte_memory s(
    
    .data(z[1]),
    .store(arr[1]),
    .memory(x[1])
    
    
);    byte_memory k(
    
    .data(z[2]),
    .store(arr[2]),
    .memory(x[2])
    
    
);    byte_memory j(
    
    .data(z[3]),
    .store(arr[3]),
    .memory(x[3])
    
    
);

    Mux g(
    
    .A(x[0]),
    .B(x[1]),
    .C(x[2]),
    .D(x[3]),
    .select(address),
    .Y(memory)
    
    
);

endmodule