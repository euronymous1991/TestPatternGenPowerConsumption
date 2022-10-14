module sumavimas(enable,teigiamas_f,neigiamas_f,grubus,Laikas);

parameter size_frontu=8;
parameter size_grubus=10;
parameter daugiklis=10;
parameter koef=50;//koeficientas nurodo kiek kartu ZO daznis yra didesnis uz atraminio clock

input enable;
input [size_frontu-1:0] neigiamas_f;
input [size_frontu-1:0] teigiamas_f;
input [size_frontu-1:0] grubus;
reg [size_frontu-1:0] teigiamas_f_laik;

output reg [size_grubus-1:0] Laikas;


always @(posedge enable) begin 
Laikas<=(grubus*koef)+(teigiamas_f-neigiamas_f)*daugiklis;

end


endmodule
