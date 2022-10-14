`timescale 1 ps/ 1 ps

module testpat_tb();

parameter osnr =1;
parameter size =12;

reg CLOCK_50_sig;
wire [31:0] Laikas_sig;
wire  OW_sig;
wire  RO_sig;

reg START_sig;
reg STOP_sig;


testpat testpat_inst
(


	.OW(OW_sig),
	.RO(RO_sig),
   	.CLOCK_50(CLOCK_50_sig),
	.START(START_sig),
	.STOP(STOP_sig),
	.Laikas(Laikas_sig)

);


initial
begin
START_sig=0;
STOP_sig=0;
CLOCK_50_sig=0;
end

always 
begin
//#300000 enable_sig=1;
//#1500000 slow_clock_sig=!slow_clock_sig;
#2083333 CLOCK_50_sig=!CLOCK_50_sig;
end
always 
begin
//#300000 enable_sig=1;
//#250000 slow_clock_sig=!slow_clock_sig;
//#2050000 matuojamas_sig=!matuojamas_sig;
//#910000 matuojamas_sig=!matuojamas_sig;
#4166666  START_sig=!START_sig;
#   50000 START_sig=!START_sig;
#24950000 STOP_sig=!STOP_sig;
#   50000 STOP_sig=!STOP_sig;
#70883334 STOP_sig=0;

//#150000 RESET_sig=!RESET_sig;
//#50000 RESET_sig=!RESET_sig;
end
//always 
//begin
////#300000 enable_sig=1;
////#250000 slow_clock_sig=!slow_clock_sig;
////#2050000 matuojamas_sig=!matuojamas_sig;
////#910000 matuojamas_sig=!matuojamas_sig;
//#3520000 STOP_sig=!STOP_sig;
//#50000 STOP_sig=!STOP_sig;
//end
//always 
//begin
////#300000 enable_sig=1;
////#250000 slow_clock_sig=!slow_clock_sig;
////#2050000 matuojamas_sig=!matuojamas_sig;
////#910000 matuojamas_sig=!matuojamas_sig;
//#8000000 RESET_sig=!RESET_sig;
//#50000 RESET_sig=!RESET_sig;
//end
endmodule


