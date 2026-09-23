onerror {exit -code 1}
vlib work
vlog -work work ejercicio13.vo
vlog -work work ejercicio13.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ejercicio13_vlg_vec_tst -voptargs="+acc"
vcd file -direction ejercicio13.msim.vcd
vcd add -internal ejercicio13_vlg_vec_tst/*
vcd add -internal ejercicio13_vlg_vec_tst/i1/*
run -all
quit -f
