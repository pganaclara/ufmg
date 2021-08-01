transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/aula8/Somador_4_Bits/fulladder.vhd}
vcom -93 -work work {C:/altera/13.0sp1/aula8/Somador_4_Bits/Somador_4_Bits.vhd}

vcom -93 -work work {C:/altera/13.0sp1/aula8/Somador_4_Bits/tb_Somador_4_Bits.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Somador_4_Bits

add wave *
view structure
view signals
run -all
