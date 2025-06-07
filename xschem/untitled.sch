v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 7 80 -10 100 -10 {}
L 7 -270 -20 -250 -20 {}
L 7 -270 20 -250 20 {}
L 7 80 30 100 30 {}
B 5 97.5 -12.5 102.5 -7.5 {name=vop dir=inout}
B 5 -252.5 -22.5 -247.5 -17.5 {name=vip dir=inout}
B 5 -252.5 17.5 -247.5 22.5 {name=vim dir=inout}
B 5 97.5 27.5 102.5 32.5 {name=vom dir=inout}
T {vop} 75 -14 0 1 0.2 0.2 {}
T {vip} -275 -24 0 1 0.2 0.2 {}
T {vim} -275 16 0 1 0.2 0.2 {}
T {vom} 75 26 0 1 0.2 0.2 {}
N -210 -80 -210 -30 {lab=#net1}
N -210 -80 -130 -80 {lab=#net1}
N -70 -80 140 -80 {lab=#net2}
N 140 -80 140 -30 {lab=#net2}
N 0 -80 -0 -30 {lab=#net2}
N -210 30 -210 60 {lab=#net3}
N -210 60 140 60 {lab=#net3}
N 140 30 140 60 {lab=#net3}
N -0 30 0 60 {lab=#net3}
C {vcvs.sym} 140 10 0 0 {name=E1 value=1000
}
C {vcvs.sym} -210 0 0 0 {name=E2 value=1000}
C {res.sym} -100 -80 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 0 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
