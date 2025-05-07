transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/display7.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/components_pkg.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/full_adder.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/mult2bits.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/comparador.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/somador.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/aluPredefinido.vhd}
vcom -2008 -work work {D:/repositorio_faculdade/Portifolio_estudantil/Projetos de Sistemas Digitais (PI com o professor panaim)/Projeto I/principal.vhd}

