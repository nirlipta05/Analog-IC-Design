v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -50 70 -50 {lab=vip}
N -20 -10 60 -10 {lab=vim}
N 100 0 100 20 {lab=vom}
N 100 20 200 20 {lab=vom}
N 100 -100 190 -100 {lab=vop}
N 100 -100 100 -60 {lab=vop}
C {vcvs.sym} 100 -30 0 0 {name=E1 value=1000
}
C {iopin.sym} 190 -100 0 0 {name=p1 lab=vop
}
C {iopin.sym} 200 20 0 0 {name=p2 lab=vom}
C {iopin.sym} -20 -10 2 0 {name=p3 lab=vim}
C {iopin.sym} -20 -50 2 0 {name=p4 lab=vip
}
