transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption {C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption/Ring_oscillator.v}
vlog -vlog01compat -work work +incdir+C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption {C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption/Counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption {C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption/TDC_result.v}
vcom -93 -work work {C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption/vienas.vhd}

vlog -vlog01compat -work work +incdir+C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption {C:/Users/433Lab/Desktop/TestPatternGenPowerConsumption/testpat_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  testpat_tb

add wave *
view structure
view signals
run 100 us
