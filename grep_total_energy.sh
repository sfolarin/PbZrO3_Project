#!/bin/bash                                                                                                                                                                                                 

energy=$(grep "!" layer_5_scf.out | tail -n 1 | awk '{print $5}')
echo "Total energy: $energy Ry" > energy.txt

echo "Total energy written to energy.txt"
