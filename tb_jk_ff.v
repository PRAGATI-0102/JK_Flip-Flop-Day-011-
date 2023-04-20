`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 10:49:12 PM
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff;

        reg j,k,clk;
        wire q;
        
        jk_ff dut(.j(j),.k(k),.clk(clk),.q(q));
        
        initial begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial 
        begin
        j <= 0;
        k <= 0;
        #10;
        
        j <= 0;
        k <= 1;
        #10;
        
        j <= 1;
        k <= 0;
        #10;
        
        j <= 1;
        k <= 1;
        #10;
        
        $finish;
        end       
        
        initial 
        $monitor("j = %b, k = %b, q = %b",j,k,q);
         
endmodule
