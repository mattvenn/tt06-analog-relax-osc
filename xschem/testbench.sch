v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 100 100 900 500 {flags=graph
y1=0.17
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-12
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=osc_out}
C {devices/code.sym} -120 -80 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code.sym} -280 -80 0 0 {name=SIMULATION
only_toplevel=false 
value="

.control
tran 500p 5u uic
write testbench.raw
*quit 0
.endc
.end
"}
C {devices/vsource.sym} -360 -40 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -360 -10 0 1 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -360 -70 0 1 {name=p13 sig_type=std_logic lab=VDD
}
C {devices/launcher.sym} 150 20 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {osc.sym} -180 140 0 0 {name=x1}
C {devices/lab_pin.sym} -30 120 0 1 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -30 140 0 1 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -30 160 0 1 {name=p3 sig_type=std_logic lab=osc_out
}
