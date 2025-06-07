v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -90 -30 -90 {lab=vnmic}
N 30 -90 60 -90 {lab=vin1}
N 120 -90 140 -90 {lab=vin2}
N 320 -80 320 30 {lab=GND}
N 200 -180 250 -180 {lab=virt}
N 210 -230 210 -180 {lab=virt}
N 210 -180 210 -90 {lab=virt}
N 210 -230 250 -230 {lab=virt}
N 310 -180 340 -180 {lab=vout}
N 310 -230 340 -230 {lab=vout}
N 340 -230 340 -180 {lab=vout}
N 340 -180 340 -140 {lab=vout}
N 320 -140 340 -140 {lab=vout}
N 260 -130 260 -70 {lab=vcm}
N 260 -130 280 -130 {lab=vcm}
N 340 -150 460 -150 {lab=vout}
N 460 -90 460 -60 {lab=GND}
N -150 -90 -150 -60 {lab=vnmic}
N -150 0 -150 60 {lab=GND}
N 260 -70 260 -20 {lab=vcm}
N 200 -90 280 -90 {lab=virt}
C {vsource.sym} -150 -30 0 0 {name=vnmic value="0 AC 1" savecurrent=false}
C {res.sym} 0 -90 3 0 {name=R1
value=380k
footprint=1206
device=resistor
m=1}
C {capa.sym} 90 -90 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -150 60 0 0 {name=l1 lab=GND}
C {res.sym} 170 -90 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 320 -110 0 0 {name=E1 value=1000
}
C {gnd.sym} 320 30 0 0 {name=l2 lab=GND}
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
C {vsource.sym} 260 10 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 260 40 0 0 {name=l3 lab=GND}
C {capa.sym} 460 -120 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 460 -60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -140 -90 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 50 -90 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 130 -90 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_wire.sym} 410 -150 0 0 {name=p4 sig_type=std_logic lab=vout
}
C {lab_wire.sym} 210 -120 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 260 -40 0 0 {name=p6 sig_type=std_logic lab=vcm}
