module testbench();

timeunit 10ns;   
timeprecision 1ns;


logic Clk = 0;

logic [9:0] SW;
logic       Run, Continue;
logic [9:0] LED;
logic [6:0] HEX0, HEX1, HEX2, HEX3;
                                
                                 

slc3_testtop testtop(.*);

                                                                


always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION
    Clk = 0;
end 


initial begin: TEST_VECTORS
#2 SW = 16'h0003;

#2 Run = 0;
   Continue = 0;
#2 Run = 1;
   Continue = 1;

	

#2 Run = 0;
#2 Run = 1;

#80 Continue = 0;
#2 Continue = 1;


#2 Continue = 0;
#2 Continue = 1;

#80 Continue = 0;
#2	Continue = 1;

#2 Continue = 0;
#2 Continue = 1;

end

endmodule



