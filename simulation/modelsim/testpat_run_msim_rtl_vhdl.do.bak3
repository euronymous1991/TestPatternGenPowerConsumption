transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Vytautas/Desktop/TestPatternGenPowerConsumption/vienas.vhd}

vlog -vlog01compat -work work +incdir+C:/Users/Vytautas/Desktop/TestPatternGenPowerConsumption {C:/Users/Vytautas/Desktop/TestPatternGenPowerConsumption/testpat_tb.v}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  testpat_tb

add wave *
view structure
view signals
run 100000 ns
