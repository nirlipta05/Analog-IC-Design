v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -180 210 -90 {lab=virt}
N -230 0 -230 60 {lab=GND}
N 210 -180 250 -180 {lab=virt}
N -230 -90 -230 -60 {lab=vnmic}
N -230 -90 -80 -90 {lab=vnmic}
N -20 -90 20 -90 {lab=vnmic}
N 80 -90 140 -90 {lab=vn1}
N -80 -90 -20 -90 {lab=vnmic}
N 380 -70 380 10 {lab=GND}
N 310 -180 480 -180 {lab=vout}
N 480 -180 480 -110 {lab=vout}
N 440 -110 590 -110 {lab=vout}
N 200 -90 240 -90 {lab=virt}
N 240 -130 240 -90 {lab=virt}
N 240 -130 300 -130 {lab=virt}
N 260 -80 260 70 {lab=vcm}
N 260 -80 310 -80 {lab=vcm}
C {vsource.sym} -230 -30 0 0 {name=vnmic value="0 AC 1" savecurrent=false}
C {capa.sym} 50 -90 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -230 60 0 0 {name=l1 lab=GND}
C {res.sym} 170 -90 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 380 0 0 0 {name=l2 lab=GND}
C {res.sym} 280 -180 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 260 100 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 260 130 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -140 -90 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 110 -90 0 0 {name=p3 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 590 -110 0 0 {name=p4 sig_type=std_logic lab=vout
}
C {lab_wire.sym} 210 -120 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 260 -40 0 0 {name=p6 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} 690 -420 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
.op
save all
AC DEC 100 1 10e6
plot v(vout)
 .endc
"}
C {opamp.sym} 230 0 0 0 {name=x1}
