`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2018 09:22:55
// Design Name: 
// Module Name: source_1
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


   
//module source_1(output reg a,output reg b);

//always@(*)
//begin
 
//begin:B1
//reg [15:0]a;
//reg [15:0] b;


//integer seed,i,j;
//      for (i=0; i<6; i=i+1)
//        begin
//           a=$urandom%10; 
//           #100;
//           b=$urandom%20;
////           $display("A %d, B: %d",a,b); 
//             $monitor("A %d, B: %d",a,b);   
//        end 
//      $finish;
//end:B1


//end
//endmodule


//module A(a,b,c);
//  input  a,b;
//  output c;

//  assign c = a&b;

//  always @*
//    $display("%b",c);
//endmodule

//-----------------------------------------------------
// This is my first Verilog Program
// Design Name : hello_world
// File Name : hello_world.v
// Function : This program will print 'hello world'
// Coder    : Deepak
//-----------------------------------------------------
module hello_world ;

initial begin
  $display ("Hello World by Deepak");
  #10 $finish;
end

endmodule // End of Module hello_world