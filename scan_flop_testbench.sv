// Code your testbench here
// or browse Examples
// Testbench
module test;

  reg clk;
  reg reset;
  reg d;
  reg se;
  reg si;
  wire q;
  
  // Instantiate design under test
  scan_flop sf(d,si,se,clk,reset,q);

          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk = 0;
    reset = 1;
    d = 1'bx;
    se=0;
    si=0;
    #1;
    d = 1;
    reset = 0;
    #1;
    clk = 1;
    #1;
    clk=0;
    se=1;
    #1;
    clk=1;
    #1;
  end
endmodule