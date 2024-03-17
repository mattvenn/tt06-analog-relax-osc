v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 480 -140 1280 260 {flags=graph
y1=0.671556
y2=1.11487
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.47151e-08
x2=1.17628e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="net1
net2
"
color="11 12"
dataset=-1
unitx=1
logx=0
logy=0
}
N 180 -100 180 20 {
lab=#net1}
N -350 -90 -350 10 {
lab=#net2}
N -350 -100 -350 -90 {
lab=#net2}
N -350 -160 -150 -160 {
lab=VDD}
N -150 -160 50 -160 {
lab=VDD}
N 50 -160 180 -160 {
lab=VDD}
N -110 -130 -80 -130 {
lab=#net2}
N -80 -130 -80 -100 {
lab=#net2}
N -150 -100 -80 -100 {
lab=#net2}
N -350 -100 -150 -100 {
lab=#net2}
N 10 -100 50 -100 {
lab=#net1}
N 10 -130 10 -100 {
lab=#net1}
N 50 -100 180 -100 {
lab=#net1}
N -80 -100 90 50 {
lab=#net2}
N 90 50 140 50 {
lab=#net2}
N -310 40 -180 40 {
lab=#net1}
N -180 40 10 -100 {
lab=#net1}
N -340 100 -80 100 {
lab=#net3}
N -350 70 -350 100 {
lab=#net3}
N -350 100 -340 100 {
lab=#net3}
N -20 100 180 100 {
lab=#net4}
N 180 80 180 100 {
lab=#net4}
N 180 160 180 250 {
lab=GND}
N -70 250 180 250 {
lab=GND}
N -350 160 -350 250 {
lab=GND}
N -350 250 -70 250 {
lab=GND}
N -430 40 -350 40 {
lab=b}
N 180 50 280 50 {
lab=b}
C {sky130_fd_pr/nfet_01v8.sym} -330 40 0 1 {name=M1
L=2
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 50 0 0 {name=M2
L=2
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 30 -130 0 0 {name=M3
L=2
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -130 -130 0 1 {name=M4
L=2
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -350 -130 0 0 {name=R1
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 180 -130 0 0 {name=R2
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -50 100 1 0 {name=C1 model=cap_mim_m3_1 W=250 L=150 MF=1 spiceprefix=X}
C {devices/gnd.sym} -70 250 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -30 -160 0 0 {name=l2 lab=VDD}
C {devices/isource.sym} -350 130 0 0 {name=I0 value=20m}
C {devices/isource.sym} 180 130 0 0 {name=I1 value=20m}
C {devices/code.sym} -390 390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} -230 390 0 0 {name=SIMULATION
only_toplevel=false 
value="
* .options filetype=ascii
.param mc_mm_switch=0
.param mc_pr_switch=0
.ic V(net1)=1.5 V(net2)=0
vs s 1.8 0
vb b 0 0
.control
tran 10p 100000p uic
write testbench.raw
quit 0
.endc
.end
"}
C {devices/vsource.sym} -600 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vdd.sym} -600 -140 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -600 -80 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -370 -130 0 0 {name=p1 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -430 40 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 280 50 2 0 {name=p4 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 160 -130 0 0 {name=p5 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -150 -130 0 0 {name=p2 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 50 -130 2 0 {name=p6 sig_type=std_logic lab=s}
C {devices/ipin.sym} -560 80 0 0 {name=p7 lab=b}
C {devices/ipin.sym} -560 110 0 0 {name=p8 lab=s}
C {devices/launcher.sym} 530 320 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
