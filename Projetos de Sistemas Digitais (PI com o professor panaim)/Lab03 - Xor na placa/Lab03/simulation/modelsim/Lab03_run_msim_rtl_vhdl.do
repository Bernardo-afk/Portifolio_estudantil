transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/snow/Documents/projetos quartus/Lab03/lab03.vhd}

vcom -2008 -work work {C:/Users/snow/Documents/projetos quartus/Lab03/lab03.vhd}
vcom -2008 -work work {C:/Users/snow/Documents/projetos quartus/Lab03/lab03_td.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  lab03_tb

add wave *
view structure
view signals
run -all
