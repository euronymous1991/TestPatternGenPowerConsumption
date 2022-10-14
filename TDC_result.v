module TDC_result(enable,Fine_START,Fine_STOP,Coarse,TDC_value);

parameter size_of_counters=8;
parameter size_of_TDC=9;
parameter multiplier=10;
parameter coef=50;//koeficientas nurodo kiek kartu ZO daznis yra didesnis uz atraminio clock

input enable;
input [size_of_counters-1:0] Fine_STOP/* synthesis keep = 1 */;
input [size_of_counters-1:0] Fine_START/* synthesis keep = 1 */;
input [size_of_counters-1:0] Coarse/* synthesis keep = 1 */;


output reg [size_of_TDC-1:0] TDC_value/* synthesis keep = 1 */;


always @(posedge enable) begin 
TDC_value<=(Coarse*coef)+(Fine_START-Fine_STOP)*multiplier     /* synthesis keep = 1 */;

end


endmodule
