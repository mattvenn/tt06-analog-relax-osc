v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N -350 70 -350 100 {
lab=left_cap}
N -350 100 -340 100 {
lab=left_cap}
N -20 100 180 100 {
lab=right_cap}
N 180 80 180 100 {
lab=right_cap}
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
lab=VSS}
N -350 100 -350 230 {
lab=left_cap}
N 180 100 180 190 {
lab=right_cap}
N 220 270 270 270 {
lab=cset}
N 180 190 180 240 {
lab=right_cap}
N 570 -120 590 -120 {
lab=osc_out}
N -90 100 -80 100 {
lab=left_cap}
N -340 100 -150 100 {
lab=left_cap}
N -20 100 -20 250 {
lab=right_cap}
N -80 100 -80 250 {
lab=left_cap}
N -150 100 -90 100 {
lab=left_cap}
N -170 -130 -150 -130 {
lab=VDD}
N -170 -160 -170 -130 {
lab=VDD}
N 50 -130 80 -130 {
lab=VDD}
N 80 -160 80 -130 {
lab=VDD}
N -550 260 -500 260 {
lab=VSS}
N -550 260 -550 290 {
lab=VSS}
N -550 290 -500 290 {
lab=VSS}
N -350 260 -300 260 {
lab=VSS}
N -300 260 -300 290 {
lab=VSS}
N -350 290 -300 290 {
lab=VSS}
N -550 200 -520 200 {
lab=VSS}
N -550 200 -550 260 {
lab=VSS}
N 150 270 180 270 {
lab=VSS}
N 150 270 150 300 {
lab=VSS}
N 150 300 180 300 {
lab=VSS}
N -400 -130 -370 -130 {
lab=VSS}
N -400 -130 -400 40 {
lab=VSS}
N -400 40 -350 40 {
lab=VSS}
N 180 -160 240 -160 {
lab=VDD}
N 180 -100 240 -100 {
lab=osc_b}
N 260 -130 260 50 {
lab=VSS}
N 180 50 260 50 {
lab=VSS}
N -80 -190 -80 -160 {
lab=VDD}
N -500 150 -500 170 {
lab=VDD}
N -410 290 -410 300 {
lab=VSS}
N 180 300 180 310 {
lab=VSS}
N 490 -60 590 -60 {
lab=osc_a}
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
C {sky130_fd_pr/res_high_po_0p35.sym} 240 -130 0 1 {name=R2
L=18
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -50 100 1 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} -80 -70 0 0 {name=p9 sig_type=std_logic lab=osc_a}
C {devices/lab_pin.sym} 10 -70 0 1 {name=p10 sig_type=std_logic lab=osc_b}
C {sky130_fd_pr/nfet_01v8.sym} -480 260 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -370 260 0 0 {name=M6
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
C {sky130_fd_pr/res_high_po_0p35.sym} -500 200 0 0 {name=R3
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_01v8.sym} 200 270 0 1 {name=M8
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
C {sky130_stdcells/clkinv_8.sym} 530 -120 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 490 -120 0 0 {name=p17 sig_type=std_logic lab=osc_a}
C {devices/lab_pin.sym} -350 100 0 0 {name=p20 sig_type=std_logic lab=left_cap}
C {devices/lab_pin.sym} -440 230 0 1 {name=p22 sig_type=std_logic lab=cset
}
C {devices/lab_pin.sym} 270 270 0 1 {name=p23 sig_type=std_logic lab=cset
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -50 250 3 1 {name=C2 model=cap_mim_m3_1 W=30 L=30 MF=5 spiceprefix=X}
C {devices/iopin.sym} 590 -120 0 0 {name=p3 lab=osc_out}
C {devices/lab_pin.sym} -80 -190 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -500 150 0 1 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -410 300 0 1 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 180 310 0 1 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 260 50 0 1 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -400 40 2 1 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} -580 -150 0 0 {name=p12 lab=VDD}
C {devices/iopin.sym} -580 -120 0 0 {name=p1 lab=VSS}
C {devices/lab_pin.sym} 180 100 0 1 {name=p4 sig_type=std_logic lab=right_cap}
C {devices/iopin.sym} 590 -60 0 0 {name=p13 lab=osc_a}
C {devices/lab_pin.sym} 490 -60 0 0 {name=p14 sig_type=std_logic lab=osc_a}
