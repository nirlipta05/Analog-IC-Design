Title: Simple high-pass filter
*This is netlist/circuit of a simple voltage divider
*R1   n1    n2   Res-in ohms
Cbyp  vin   n1   4.7u
Rhp   n1    vcm  5k

*Stimulus sources
Vsin  vin  0  0 AC 1
Vscm  vcm  0  0.5

.op

*Control script
.control
* first run then add the plot command to get the graph
  save all
  AC DEC 100 1 10e6

*to plot it from the program directly
plot vdb(n1)
*plot v(n1)
*measure the -3db cutoff freq
*.meas ac f_3db when vdb(n1) = -3
*MEAS AC gain MAX vmag(n1) FROM=1 TO=10e6
MEAS AC gain_db MAX vdb(n1) FROM=1 TO=10e6
LET f3db =gain_db -3
print f3db
*LET gain_db = 20 *log10(gain)
*LET f3db = gain/sqrt(2)
MEAS AC fzero WHEN vmag(n1)= f3db RISE=1
.endc
.end
