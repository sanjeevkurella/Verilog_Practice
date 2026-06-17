# AND Gate

## Description
The AND gate produces logic 1 only when both inputs are logic 1.

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Files

- and_st.v : Structural Modeling
- and_data.v : Dataflow Modeling
- and_data_always.v : Behavioral Modeling
- and_tb.v : Testbench
- and_waveform.png : Waveform Screenshot

## Simulation

iverilog -o out and_st.v and_tb.v
vvp out
gtkwave and.vcd
