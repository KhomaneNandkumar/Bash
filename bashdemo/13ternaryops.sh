#!bin/bash
#cond1  && cond2 || cond3

read -p "What is Your Age?" age
[[ $age -ge 18 ]] && echo "Adult " || echo "minor"
