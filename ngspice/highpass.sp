title:simple high-pass filter
*this is netlist/circuit of a simple voltage divide
*R1  n1  n2  Res-in-ohms
cbyp Vin n1   4.7u
Rhp  n1  vcm  5k
*Stimulus sources 
Vsin  vin   0  0 AC 1
Vscm  vcm   0  0.5
.OP
.END

