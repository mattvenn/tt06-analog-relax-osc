v {xschem version=3.4.5 file_version=1.2
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
x2=2e-06
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
osc_ana_out"}
B 2 100 560 900 960 {flags=graph
y1=0.0014
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-12
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="osc_out_parax
osc_ana_out_parax"
color="6 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 960 100 1760 500 {flags=graph
y1=6.5e-05
y2=0.00035
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-12
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 960 560 1760 960 {flags=graph
y1=6.9e-05
y2=0.00033
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-12
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas_parax)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -240 140 -160 140 {
lab=vss}
N -240 590 -160 590 {
lab=vss}
N -240 570 -220 570 {
lab=#net1}
N -70 210 -50 210 {
lab=osc_out}
N -50 210 -30 210 {
lab=osc_out}
N -130 680 -110 680 {
lab=osc_out_parax}
N -110 680 -90 680 {
lab=osc_out_parax}
N -200 680 -190 680 {
lab=#net2}
N -70 350 -50 350 {
lab=osc_ana_out}
N -50 350 -30 350 {
lab=osc_ana_out}
N -240 160 -190 160 {
lab=#net3}
N -190 160 -190 210 {
lab=#net3}
N -190 210 -130 210 {
lab=#net3}
N -240 180 -200 180 {
lab=#net4}
N -200 180 -200 350 {
lab=#net4}
N -200 350 -130 350 {
lab=#net4}
N -130 790 -110 790 {
lab=osc_ana_out_parax}
N -110 790 -90 790 {
lab=osc_ana_out_parax}
N -200 790 -190 790 {
lab=#net5}
N -240 610 -210 610 {
lab=#net2}
N -210 610 -210 680 {
lab=#net2}
N -210 680 -200 680 {
lab=#net2}
N -240 630 -230 630 {
lab=#net5}
N -230 630 -230 790 {
lab=#net5}
N -230 790 -200 790 {
lab=#net5}
N -470 -80 -470 -70 {
lab=vss}
N -360 -80 -360 -70 {
lab=vdd}
N -470 -10 -470 -0 {
lab=GND}
N -360 -10 -360 0 {
lab=GND}
N -50 410 -50 420 {
lab=vss}
N -50 270 -50 280 {
lab=vss}
N -110 850 -110 860 {
lab=vss}
N -110 740 -110 750 {
lab=vss}
N -240 120 -180 120 {
lab=#net6}
N -180 120 -170 120 {
lab=#net6}
N -170 60 -140 60 {
lab=vdd}
N -170 510 -150 510 {
lab=vdd}
N -220 570 -170 570 {
lab=#net1}
C {devices/code.sym} -120 -80 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code.sym} -280 -80 0 0 {name=SIMULATION
only_toplevel=false 
value="
*.param mc_mm_switch=0
.control
let vddc = 1.8            ; create a vector vddc and assign 1.8
repeat 5
 * alter V1 $&vddc         ; alter the voltage V1 using vector vddc
  tran 500p 2u uic
  let vddc = vddc - 0.1   ; update vddc
  write testbench.raw  
  set appendwrite 
  reset 
 end

*quit 0
.endc
.end
"}
C {devices/vsource.sym} -360 -40 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/launcher.sym} 150 20 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {osc.sym} -390 150 0 0 {name=x1}
C {devices/lab_pin.sym} -30 210 0 1 {name=p3 sig_type=std_logic lab=osc_out
}
C {osc.sym} -390 600 0 0 {name=x2
schematic=osc_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/osc.sim.spice])"
tclcommand="textwindow [file normalize ../mag/osc.sim.spice]"



}
C {devices/lab_pin.sym} -90 680 0 1 {name=p1 sig_type=std_logic lab=osc_out_parax
}
C {devices/res.sym} -100 210 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -50 240 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -160 680 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -110 710 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -30 350 0 1 {name=p2 sig_type=std_logic lab=osc_ana_out
}
C {devices/res.sym} -100 350 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -50 380 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -90 790 0 1 {name=p4 sig_type=std_logic lab=osc_ana_out_parax
}
C {devices/res.sym} -160 790 1 0 {name=R4
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -110 820 0 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -360 0 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -360 -80 2 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -140 60 2 0 {name=p6 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} -470 -40 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -470 0 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -470 -80 2 1 {name=p7 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -160 140 0 1 {name=p8 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -50 280 0 1 {name=p9 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -50 420 0 1 {name=p10 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -160 590 0 1 {name=p11 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -110 750 0 1 {name=p12 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -110 860 0 1 {name=p13 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -150 510 2 0 {name=p15 sig_type=std_logic lab=vdd
}
C {devices/ammeter.sym} -170 90 0 0 {name=Vmeas savecurrent=false}
C {devices/ammeter.sym} -170 540 0 0 {name=Vmeas_parax savecurrent=false}
