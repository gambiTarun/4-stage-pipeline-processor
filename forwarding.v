
module forwarding(
    input [2:0] Rd,
    input Osrc,
    input [2:0] Writereg,
    input Regwrite,
    input Reset,
    output reg ForwardA
    );
	 
	 always@(Reset)
	 begin
	 if(Reset==1) begin ForwardA = 0; end
	 end
	 
	 always@*
	 begin 
	 if(Regwrite==1 && Rd == Writereg)
	 begin 
	 if(Osrc == 0) begin ForwardA = 1; end
	 else if(Osrc == 1) begin ForwardA = 0; end
	 end
	 else begin ForwardA = 0; end 
	 end

endmodule
