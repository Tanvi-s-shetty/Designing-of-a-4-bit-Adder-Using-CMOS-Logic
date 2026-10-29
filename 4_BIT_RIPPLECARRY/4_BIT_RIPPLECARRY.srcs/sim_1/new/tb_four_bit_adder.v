`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2026 14:21:51
// Design Name: 
// Module Name: tb_four_bit_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_four_bit_adder;
reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

four_bit_adder uut (A, B, Cin, Sum, Cout);

initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0, tb_four_bit_adder);

    A = 4'b0001; B = 4'b0010; Cin = 0;
    #10;
    A = 4'b0100; B = 4'b0011; Cin = 0;
    #10;
    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;
    $finish;
end

endmodule
