/* test bench */

`include "halfadder.v"


module halfadder_TB;
    reg a,b;
    wire sum,carry;

    halfadder add1(a,b,sum,carry);

    initial
      begin
        $dumpfile("halfadder.vcd");
        $dumpvars(0,halfadder_TB);
        a = 0; b = 0;
        #1
        a = 0; b = 1;
        #1
        a = 1; b = 0;
        #1
        a = 1; b = 1;
   
    end

    endmodule