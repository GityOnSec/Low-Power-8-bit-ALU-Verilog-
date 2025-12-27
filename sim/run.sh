#!/bin/bash
iverilog -o alu_sim ../src/*.v ../tb/alu_tb.v
vvp alu_sim

Make Executable : chmod +x run.sh
