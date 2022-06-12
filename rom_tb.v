`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module rom_design_tb;
reg[2:0]adr;
wire [3:0]data_out;
//reg[15:0]mem[15:0];

rom_design vid(.data_out(data_out),.adr(adr));
initial
begin
adr=3'b000;
end

always#20 adr=$random;

endmodule
