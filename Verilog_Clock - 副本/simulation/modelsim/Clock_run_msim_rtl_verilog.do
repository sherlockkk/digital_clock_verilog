transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/modchose.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/zhuangtai.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/print4.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/print3.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/print2.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/print1.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/paobiao.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/naozhong.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/jishi.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/fenpin.v}
vlog -vlog01compat -work work +incdir+I:/Game/Verilog_Clock {I:/Game/Verilog_Clock/Clock.v}

