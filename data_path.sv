module data_path(
		input logic reset,
		input logic [1:0] PCMUX,
		input logic [15:0] data_int,
		output logic [15:0] data_out,
		output logic LD_IR,LD_MAR, LD_PC,


);
logic [15:0] bus


reg_16 MDR (.Clk(),.Reset(),.Load(),.D(),.Data_Out());

reg_16 PC (.Clk(),.Reset(),.Load(),.D(),.Data_Out());

reg_16 MDR (.Clk(),.Reset(),.Load(),.D(),.Data_Out());

reg_16 MDR (.Clk(),.Reset(),.Load(),.D(),.Data_Out());

mux_f1( bus)




endmodule 



logic LD_MAR, LD_MDR, LD_IR, LD_BEN, LD_CC, LD_REG, LD_PC, LD_LED;
logic GatePC, GateMDR, GateALU, GateMARMUX;
logic SR2MUX, ADDR1MUX, MARMUX;
logic BEN, MIO_EN, DRMUX, SR1MUX;
logic [1:0] PCMUX, ADDR2MUX, ALUK;
logic [15:0] MDR_In;
logic [15:0] MAR, MDR, IR;



output logic        LD_MAR,
									LD_MDR,
									LD_IR,
									LD_BEN,
									LD_CC,
									LD_REG,
									LD_PC,
									LD_LED, // for PAUSE instruction
									
				output logic        GatePC,
									GateMDR,
									GateALU,
									GateMARMUX,
									
				output logic [1:0]  PCMUX,
				output logic        DRMUX,
									SR1MUX,
									SR2MUX,
									ADDR1MUX,
				output logic [1:0]  ADDR2MUX,
									ALUK,
				  
				output logic        Mem_OE,
									Mem_WE
				);