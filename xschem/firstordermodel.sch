v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -340 -120 -160 -120 {lab=vim}
N -160 -120 -160 -30 {lab=vim}
N -500 30 -500 100 {lab=GND}
N -160 30 -160 100 {lab=GND}
N 110 -120 110 -20 {lab=vim}
N -160 -120 110 -120 {lab=vim}
N 110 20 110 100 {lab=GND}
N -500 100 110 100 {lab=GND}
N -160 -280 150 -280 {lab=vout}
N 150 -280 150 -30 {lab=vout}
N -660 -20 -540 -20 {lab=#net1}
N -820 -20 -720 -20 {lab=#net2}
N -660 20 -660 100 {lab=#net3}
N -660 20 -540 20 {lab=#net3}
N -940 -20 -940 100 {lab=#net4}
N -940 -20 -880 -20 {lab=#net4}
N -240 100 -240 160 {lab=GND}
N 150 30 150 120 {lab=GND}
N -240 120 150 120 {lab=GND}
N 150 -120 360 -120 {lab=vout}
N -500 -120 -500 -30 {lab=#net5}
N -500 -120 -400 -120 {lab=#net5}
N -600 -280 -220 -280 {lab=#net1}
N -600 -280 -600 -20 {lab=#net1}
C {vcvs.sym} -500 0 0 0 {name=E1 value=1000}
C {vcvs.sym} 150 0 0 0 {name=E2 value=1}
C {res.sym} -370 -120 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -190 -280 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -160 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -690 -20 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -850 -20 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -940 130 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -660 130 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -940 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -660 160 0 0 {name=l2 lab=GND}
C {gnd.sym} -240 160 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -220 -120 0 0 {name=p1 sig_type=std_logic lab=vim}
C {lab_wire.sym} 360 -120 0 0 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -1020 -360 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
.op
AC DEC 100 1 10e6
plot v(vout)
.endc
* ngspice commands
"}
