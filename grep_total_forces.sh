#!/bin/bash                                                                                                                                                                                                 

grep "atom \| type l \| force =" myinput.out > forces.txt

echo "Force values written to forces.txt"
