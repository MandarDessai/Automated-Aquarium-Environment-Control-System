//`timescale 1s / 100ms
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 06.12.2018 11:59:17
//// Design Name: 
//// Module Name: simulation_source
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module test(output reg temp_low, output reg temp_high, output reg temp_optimum, output reg light_on,output reg light_off, output reg air_cir);
 
// // Inputs
// reg clock;
// reg reset;
// reg [12:0]temp_value;
// reg [12:0]motion_det_value;
// reg [1:0]cycles=00; 
// // Outputs
// wire [12:0] rnd;
////  reg temp_low;
////  reg temp_high;
 
 
 
 
// // Instantiate the Unit Under Test (UUT)
// LFSR uut (
//  .clock(clock), 
//  .reset(reset), 
//  .rnd(rnd)
// );
  
// initial begin
//  clock = 0;
//  forever
////  #50clock = ~clock;
//    #50clock=~clock;
//  end
   
//initial begin
//  // Initialize Inputs
//     reset = 0;
//  // Wait 100 ns for global reset to finish
////  #100;
//    #100
//      reset = 1;
////  #200;

//  #200
//  reset = 0;
//  // Add stimulus here
//end
  
//  initial begin

////#100 $display("clock rnd");
////$display("clock=%b,random_num=%f", clock, rnd);
//end



////This is the temperature control system
//always@(*)
//begin
//#500000000 $display("clock=%b,random_num= %.0f.%3d", clock, (rnd/100), rnd%100);
//assign temp_value=rnd;
//assign temp_value=((temp_value)<<<2)/(1000);
//$display("current temp=%f",temp_value);

//begin
//if(temp_value>=20)
////start cooling system
//// Heating system pin= LOW
//// Cooling system Pin=HIGH
//$display("Cooling system started");
//else if(temp_value<=7)
////start heating system
//// Heating system pin= HIGH
//// Cooling system Pin=LOW
//$display("Heating system started");
//else
//$display("Optimum Temperature Maintained");
//// Heating system pin= LOW
//// Cooling system Pin=LOW
//end
//// End Temperature control system


////start motion sensor control sys
//assign motion_det_value=rnd;
//assign motion_det_value=(motion_det_value)>>>2;
//$display("Current Sensor Value=%d",motion_det_value);
//if(motion_det_value>=1000)
////Turn the Light LED ON
//$display("Light On");
//else
////Turn The Light LED OFF
//$display("Light Off");
////stop motion sensor control system
//assign cycles=cycles+1;
//end  



//always@(*)
//begin
//if(cycles==3)
//begin
//$display("Air Circulation System ON");
//// Turn ON Air Circulation System LED
//assign cycles=0;
//end
//$display("----------------------");
//$display("----------------------");
//end





//endmodule


