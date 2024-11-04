`timescale 1ns/100ps
module tb_cla4;
	reg [3:0] tb_a, tb_b;
	reg tb_ci;
	wire [3:0] tb_s;
	wire tb_co;
	wire [4:0] tb_result;	
	assign tb_result = {tb_co, tb_s};

cla4 U0_cla4(tb_a,tb_b,tb_ci,tb_co,tb_s); //check carry at waveform

	initial begin
		tb_a = 0; tb_b = 0; tb_ci = 0;
		#10; tb_a = 4'h4; tb_b = 4'h3; tb_ci = 0;
		#10; tb_a = 4'h5; tb_b = 4'hb; tb_ci = 0;
		#10; tb_a = 4'h7; tb_b = 4'h7; tb_ci = 1;
		#10; tb_a = 4'h7; tb_b = 4'h8; tb_ci = 1;
		#10; tb_a = 4'hf; tb_b = 4'hf; tb_ci = 0;
		#10; tb_a = 4'hf; tb_b = 4'hf; tb_ci = 1;
		#10; $stop;
	end
endmodule