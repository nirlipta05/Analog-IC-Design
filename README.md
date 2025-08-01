# Analog-IC-Design
This repository contain the design,simulation and analysi of an interface circuit for a MEMS microphone,developed during an internship on Analog IC Design.The project involved:

* Modelling the MEMS microphone using its Thevenin equivalent
* Designing an op-amp based amplifier
* Performing circuit characterization using ngspice
* Implementing schematics using Xschem
***
## Thevenin equivalent model calculation
### SPL to Pressure Conversion:
  Pressure(Pa)=10^((60-94)/20) = 19.95*10^-3 Pa
### Output Voltage (peak)
V_out(peak)= 2*19.95*10^3*10^(-44/20)=0.178mV_pk


![Schematic](https://github.com/nirlipta05/Analog-IC-Design/blob/main/Screenshot%202025-08-01%20183249.png?raw=true)
***
## S-Domain Analysis of the amplifier
![Schematic](https://github.com/nirlipta05/Analog-IC-Design/blob/main/Fig-d2-1-mic-analysis.png?raw=true)
***
## Thevenin Equivalent model of the microphone
