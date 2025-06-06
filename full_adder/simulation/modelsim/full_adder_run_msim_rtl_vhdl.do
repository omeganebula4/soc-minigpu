transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/full_adder/full_adder.vhd}

vcom -93 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/full_adder/test_bench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  test_bench

add wave *
view structure
view signals
run -all
