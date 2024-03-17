v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 490 -140 1290 260 {flags=graph
y1=-0.116442
y2=2.09156
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
color="6 4 5"
node="osc_a
osc_b
nfet_drain"}
B 2 480 400 1280 800 {flags=graph
y1=0.0019
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


dataset=-1
unitx=1
logx=0
logy=0
color="6 9"
node="inv_out
osc_out"}
N 180 -100 180 20 {
lab=osc_b}
N -350 -90 -350 10 {
lab=osc_a}
N -350 -100 -350 -90 {
lab=osc_a}
N -350 -160 -150 -160 {
lab=VDD}
N -150 -160 50 -160 {
lab=VDD}
N 50 -160 180 -160 {
lab=VDD}
N -110 -130 -80 -130 {
lab=osc_a}
N -80 -130 -80 -100 {
lab=osc_a}
N -150 -100 -80 -100 {
lab=osc_a}
N -350 -100 -150 -100 {
lab=osc_a}
N 10 -100 50 -100 {
lab=osc_b}
N 10 -130 10 -100 {
lab=osc_b}
N 50 -100 180 -100 {
lab=osc_b}
N -80 -100 90 50 {
lab=osc_a}
N 90 50 140 50 {
lab=osc_a}
N -310 40 -180 40 {
lab=osc_b}
N -180 40 10 -100 {
lab=osc_b}
N -340 100 -80 100 {
lab=nfet_drain}
N -350 70 -350 100 {
lab=nfet_drain}
N -350 100 -340 100 {
lab=nfet_drain}
N -20 100 180 100 {
lab=rnfet_drain}
N 180 80 180 100 {
lab=rnfet_drain}
N -430 40 -350 40 {
lab=b}
N 180 50 280 50 {
lab=b}
N -80 -100 -80 -70 {
lab=osc_a}
N 10 -100 10 -70 {
lab=osc_b}
N -460 260 -390 260 {
lab=cset}
N -500 230 -440 230 {
lab=cset}
N -440 230 -440 260 {
lab=cset}
N -500 290 -350 290 {
lab=GND}
N -350 100 -350 230 {
lab=nfet_drain}
N 180 100 180 190 {
lab=rnfet_drain}
N 220 270 270 270 {
lab=cset}
N 180 190 180 240 {
lab=rnfet_drain}
N 100 510 120 510 {
lab=osc_out}
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
L=18
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 180 -130 0 0 {name=R2
L=18
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -50 100 1 0 {name=C1 model=cap_mim_m3_1 W=50 L=200 MF=1 spiceprefix=X}
C {devices/gnd.sym} -350 290 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -30 -160 0 0 {name=l2 lab=VDD}
C {devices/code.sym} -370 440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code.sym} -370 640 0 0 {name=SIMULATION
only_toplevel=false 
value="
vs s 1.8 0
vb b 0 0

.control
tran 500p 5u uic
write testbench.raw
quit 0
.endc
.end
"}
C {devices/vsource.sym} 20 670 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vdd.sym} 20 640 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 20 700 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -370 -130 0 0 {name=p1 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -430 40 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 280 50 2 0 {name=p4 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 160 -130 0 0 {name=p5 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -150 -130 0 0 {name=p2 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 50 -130 2 0 {name=p6 sig_type=std_logic lab=s}
C {devices/ipin.sym} 140 640 0 0 {name=p7 lab=b}
C {devices/ipin.sym} 140 670 0 0 {name=p8 lab=s}
C {devices/launcher.sym} 530 320 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {devices/lab_pin.sym} -80 -70 0 0 {name=p9 sig_type=std_logic lab=osc_a}
C {devices/lab_pin.sym} 10 -70 0 1 {name=p10 sig_type=std_logic lab=osc_b}
C {sky130_fd_pr/nfet_01v8.sym} -480 260 0 1 {name=M5
L=2
W=20
nf=5
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
C {sky130_fd_pr/nfet_01v8.sym} -370 260 0 0 {name=M6
L=2
W=20
nf=5
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
C {sky130_fd_pr/res_high_po_0p35.sym} -500 200 0 0 {name=R3
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/vdd.sym} -500 170 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 180 300 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 200 270 0 1 {name=M8
L=2
W=20
nf=5
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
C {devices/lab_pin.sym} -520 200 0 0 {name=p11 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -500 260 0 0 {name=p12 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 180 270 0 0 {name=p13 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -350 260 0 1 {name=p15 sig_type=std_logic lab=b}
C {sky130_stdcells/clkinv_8.sym} 60 510 0 0 {name=x1 VGND=GND VNB=VGND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 20 510 0 0 {name=p17 sig_type=std_logic lab=nfet_drain}
C {devices/lab_pin.sym} 120 510 0 1 {name=p18 sig_type=std_logic lab=osc_out}
C {devices/lab_pin.sym} -350 100 0 0 {name=p20 sig_type=std_logic lab=nfet_drain}
C {devices/lab_pin.sym} 180 100 2 0 {name=p21 sig_type=std_logic lab=rnfet_drain}
C {devices/lab_pin.sym} -440 230 0 1 {name=p22 sig_type=std_logic lab=cset
}
C {devices/lab_pin.sym} 270 270 0 1 {name=p23 sig_type=std_logic lab=cset
}