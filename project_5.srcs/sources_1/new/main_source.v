`timescale 1s / 100ms
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2018 11:59:17
// Design Name: 
// Module Name: simulation_source
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


module test(output temp_low, output temp_high, output temp_optimum, output  light_on,output light_off, output air_cir,output wire p);
 
 // Inputs
 reg clock;
 reg reset;
 reg [12:0]temp_value;
 reg [12:0]motion_det_value;
 reg [1:0]cycles=00; 
 // Outputs
 wire [12:0] rnd;
//  reg temp_low;
//  reg temp_high;
 reg [1:00]k=00;
 
 reg temp_low;
 reg temp_high;
 reg temp_optimum;
 reg light_on;
 reg light_off;
 reg air_cir;
 wire p;
 
 // Instantiate the Unit Under Test (UUT)
 LFSR uut (
  .clock(clock), 
  .reset(reset), 
  .rnd(rnd)
 );
  
 initial begin
  clock = 0;
  forever
//  #50clock = ~clock;
    #50clock=~clock;
  end
   
initial begin
  // Initialize Inputs
     reset = 0;
  // Wait 100 ns for global reset to finish
//  #100;
    #100
      reset = 1;
//  #200;

  #200
  reset = 0;
  // Add stimulus here
end
  
  initial begin

//#100 $display("clock rnd");
//$display("clock=%b,random_num=%f", clock, rnd);
end



//This is the temperature control system
always@(*)
begin
 $display("----------------------"); 
 $display("----------------------");
 $display("clock=%b,random_num= %.0f.%3d", clock, (rnd/100), rnd%100);
  #500000000 temp_value =rnd;
  air_cir=1'b0;
  temp_value =((temp_value)<<<2)/(1000);
//  $display("----------------------");
//  $display("----------------------");
$display("current temp=%f",temp_value);

begin
if(temp_value>=20)
begin
temp_low=1'b0;
temp_high=1'b1;
temp_optimum=1'b0;
//start cooling system
// Heating system pin= LOW
// Cooling system Pin=HIGH
k=1;
$display("Cooling system started");
end
else if(temp_value <=7)
begin
//start heating system
// Heating system pin= HIGH
// Cooling system Pin=LOW
temp_low=1'b1;
temp_high=1'b0;
temp_optimum=1'b0;
k=1;
$display("Heating system started");
end
else
begin
$display("Optimum Temperature Maintained");
temp_low=1'b0;
temp_high=1'b0;
temp_optimum=1'b1;
// Heating system pin= LOW
// Cooling system Pin=LOW
k=1;
end

end
// End Temperature control system


//start motion sensor control sys
  motion_det_value = rnd;
  motion_det_value = (motion_det_value)>>>2;
$display("Current Sensor Value=%d",motion_det_value);
if(motion_det_value>=1000)
begin
//Turn the Light LED ON

light_on=1'b1;
light_off=1'b0;
k=2;
$display("Light On");
end
else
begin
//Turn The Light LED OFF
$display("Light Off");
//stop motion sensor control system
light_on=1'b0;
light_off=1'b1;
k=2;

//assign cycles=cycles+1;
cycles=cycles+1;
end
end


always@(*)
begin
if(cycles==3)
begin
$display("Air Circulation System ON");
// Turn ON Air Circulation System LED
//assign cycles=0;
cycles=0;
air_cir=1'b1;
k=3;
end
end
endmodule



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
// reg [1:00]k=00;
 
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
// $display("----------------------"); 
// $display("----------------------");
// $display("clock=%b,random_num= %.0f.%3d", clock, (rnd/100), rnd%100);
//  #500000000 temp_value =rnd;
//  temp_value =((temp_value)<<<2)/(1000);
////  $display("----------------------");
////  $display("----------------------");
//$display("current temp=%f",temp_value);

//begin
//if(temp_value>=20)
//begin
//temp_low=1'b0;
//temp_high=1'b1;
//temp_optimum=1'b0;
////start cooling system
//// Heating system pin= LOW
//// Cooling system Pin=HIGH
//k=1;
//$display("Cooling system started");
//end
//else if(temp_value <=7)
//begin
////start heating system
//// Heating system pin= HIGH
//// Cooling system Pin=LOW
//temp_low=1'b1;
//temp_high=1'b0;
//temp_optimum=1'b0;
//k=1;
//$display("Heating system started");
//end
//else
//begin
//$display("Optimum Temperature Maintained");
//temp_low=1'b0;
//temp_high=1'b0;
//temp_optimum=1'b1;
//// Heating system pin= LOW
//// Cooling system Pin=LOW
//k=1;
//end

//end
//// End Temperature control system


////start motion sensor control sys
//  motion_det_value = rnd;
//  motion_det_value = (motion_det_value)>>>2;
//$display("Current Sensor Value=%d",motion_det_value);
//if(motion_det_value>=1000)
//begin
////Turn the Light LED ON
//light_on=1'b1;
//light_off=1'b0;
//k=2;
//$display("Light On");
//end
//else
//begin
////Turn The Light LED OFF
//$display("Light Off");
////stop motion sensor control system
//light_on=1'b0;
//light_off=1'b1;
//k=2;

////assign cycles=cycles+1;
//cycles=cycles+1;
//end
//end


//always@(*)
//begin
//if(cycles==3)
//begin
//$display("Air Circulation System ON");
//// Turn ON Air Circulation System LED
////assign cycles=0;
//cycles=0;
//air_cir=1'b1;
//k=3;
//end
////$display("----------------------");
////$display("----------------------");
//air_cir=1'b0;
//end
//endmodule