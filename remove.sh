#!/bin/bash                                                                                                                                                                                                 

# Find the last line that contains atomic positions                                                                                                                                                         
last_positions=$(grep -n "ATOMIC_POSITIONS" layer_5_scf.out | tail -1 | awk -F ":" '{print $1}')

# Print the atomic positions starting from the last_positions line                                                                                                                                          
tail -n +"$last_positions" layer_5_scf.out | awk 'NF && /^[A-Z]/ {print $0}' >Top_coordinates.txt

echo "Final atomic positions written to bottom_positions.txt"


# Extract the relaxed atom positions by skipping any lines with "0 0 0" in the last three columns                                                                                                          
awk '$5 != 0 || $6 != 0 || $7 != 0 {print}' Top_coordinates.txt > relaxedTop_positions.txt


