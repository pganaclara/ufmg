transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/aula10/ExemploAula9/funcao.vhd}

vcom -93 -work work {C:/altera/13.0sp1/aula10/ExemploAula9/tb_funcao.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_funcao

add wave *
view structure
view signals
run -all
