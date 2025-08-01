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
### Key Components:
- *Vmic (AC Source)*: Represents the small signal output of the MEMS microphone due to sound pressure.
- *R1 (Series Resistor)*: Models the internal resistance of the microphone (Thevenin resistance).
- *C1, C3 (Coupling Capacitors)*: Block DC and pass the AC audio signal.
- *E1 (Buffer Stage)*: A voltage-controlled voltage source (VCVS) providing impedance isolation.
- *V2 (Bias Voltage)*: Sets the common-mode voltage (Vcm) at 1.5V for AC analysis.
- *R3 (Load Resistor)*: Represents the input resistance of the subsequent amplifier stage.

![Schematic](https://github.com/nirlipta05/Analog-IC-Design/blob/main/Screenshot%202025-08-01%20202907.png?raw=true)
***
## Theveninn equivalent using op-amp
![schematic](https://github.com/nirlipta05/Analog-IC-Design/blob/main/Screenshot%202025-08-01%20210735.png?raw=true)
