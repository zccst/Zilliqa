#!/bin/bash
for port in {01..20}
do
    NUM_N=5000
    let NUM_N=$NUM_N+$port

    echo $NUM_N
done