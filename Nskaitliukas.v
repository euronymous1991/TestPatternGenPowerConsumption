module Nskaitliukas(gate,clk,clear,Q,OW);

parameter size=8;
input gate,clk,clear;
output reg [size-1:0] Q;
output reg OW;




always @(posedge clk or posedge clear) begin
 if (clear) begin
 Q<=0; 
 OW<=0;
 end
 else if (gate==1) begin 
 if (Q==(2**size)-1) begin
 OW<=1; end
 else begin Q<=Q+1; 
 end

end
end
endmodule 
