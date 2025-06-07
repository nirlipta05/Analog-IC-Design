v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -230 210 -180 {lab=virt}
N 210 -180 210 -90 {lab=virt}
N 210 -230 250 -230 {lab=virt}
N 310 -180 340 -180 {lab=vout}
N 310 -230 340 -230 {lab=vout}
N 340 -230 340 -180 {lab=vout}
N 340 -180 340 -140 {lab=vout}
N 340 -150 460 -150 {lab=vout}
N 530 -90 530 -60 {lab=GND}
N -230 0 -230 60 {lab=GND}
N 260 -70 260 -20 {lab=vcm}
N 460 -150 530 -150 {lab=vout}
N 260 -20 260 70 {lab=vcm}
N 260 -130 300 -130 {lab=vcm}
N 260 -130 260 -70 {lab=vcm}
N 210 -180 250 -180 {lab=virt}
N 340 -80 340 40 {lab=GND}
N 200 -90 300 -90 {lab=virt}
N -230 -90 -230 -60 {lab=vnmic}
N -230 -90 -80 -90 {lab=vnmic}
N -20 -90 20 -90 {lab=vn1}
N 80 -90 140 -90 {lab=vn2}
C {vsource.sym} -230 -30 0 0 {name=vnmic value="0 AC 1" savecurrent=false}
C {res.sym} -50 -90 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 50 -90 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -230 60 0 0 {name=l1 lab=GND}
C {res.sym} 170 -90 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 340 -110 0 0 {name=E1 value=1000
}
C {gnd.sym} 340 40 0 0 {name=l2 lab=GND}
C {res.sym} 280 -180 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 280 -230 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 260 100 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 260 130 0 0 {name=l3 lab=GND}
C {capa.sym} 530 -120 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 -60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -140 -90 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 0 -90 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 110 -90 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 410 -150 0 0 {name=p4 sig_type=std_logic lab=vout
}
C {lab_wire.sym} 210 -120 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 260 -40 0 0 {name=p6 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} 690 -420 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
op
save all
set appendwrite
AC DEC 100 1 10e6
write mictest.raw

MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
LET vm3db = gain_db-3.0
print vm3db
MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
MEAS AC fmid WHEN vdb(vout)=gain_db
**Phase Measurement
LET phase_deg = cph(vout)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero and fpole using phase
LET phase_zero_ph = phase_mid-45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph


 .endc
"}
