#!/bin/bash

mkdir gnu
mkdir intel

T="1 2 4 6 8"

GNUFLAGS="-lm -o prog -fopenmp"

gcc pprg.c -O2 -$GNUFLAGS

for i in $T
do
        export OMP_NUM_THREADS=$i
        { time ./prog; } 2>> gnu/time-thread-${i}.txt
done

ICCFLAGS="-lm -o prog -qopenmp"

icc pprg.c -O1 -$ICCFLAGS

for i in $T
do
        export OMP_NUM_THREADS=$i
        { time ./prog; } 2>> intel/time-thread-${i}.txt
done

