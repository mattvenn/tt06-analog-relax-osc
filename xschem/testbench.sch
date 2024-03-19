v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 100 100 900 500 {flags=graph
y1=-0.0048
y2=1.8
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
color="6 4"
node="osc_out
x1.osc_a"}
B 2 100 560 900 960 {flags=graph
y1=0.35
y2=1.9
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
node=x2.osc_a
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -240 140 -160 140 {
lab=GND}
N -240 120 -220 120 {
lab=VDD}
N -240 590 -160 590 {
lab=GND}
N -240 570 -220 570 {
lab=VDD}
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
C {devices/launcher.sym} 150 20 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {osc.sym} -390 140 0 0 {name=x1}
C {devices/lab_pin.sym} -240 160 0 1 {name=p3 sig_type=std_logic lab=osc_out
}
C {devices/gnd.sym} -360 -10 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 140 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -360 -70 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} -220 120 0 0 {name=l4 lab=VDD}
C {osc.sym} -390 590 0 0 {name=x2
schematic=osc_parax.sim
spice_sym_def=".include ../../mag/osc.sim.spice"
tclcommand="textwindow ../mag/osc.sim.spice"}
C {devices/lab_pin.sym} -240 610 0 1 {name=p1 sig_type=std_logic lab=osc_out_parax
}
C {devices/gnd.sym} -160 590 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -220 570 0 0 {name=l6 lab=VDD}
