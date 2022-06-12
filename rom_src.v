`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module rom_design(
    input [2:0]adr,
    output [3:0]data_out);

//reg [7:0]data_out;
reg [3:0] mem [7:0];

initial $readmemb("f1.mem",mem);

assign data_out=mem[adr];

endmodule
