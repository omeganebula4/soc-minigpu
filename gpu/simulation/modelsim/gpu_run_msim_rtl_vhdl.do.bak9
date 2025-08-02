transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/alu.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/pc.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/types_pkg.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/core.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/dcr.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/decoder.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/dispatcher.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/fetcher.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/lsu.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/rf.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/scheduler.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/thread.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/mem_controller_mem.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/mem_controller_instr.vhd}
vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/gpu.vhd}

vcom -2008 -work work {C:/Users/harsh/Desktop/Coding/quartus_arch_design/gpu/gpu_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  gpu_tb

add wave *
view structure
view signals
run 1000 ns
