#!/bin/bash

# Animated smiley face in terminal
frames=(
"  😊  "
"  😐  "
"  😉  "
"  😄  "
"  🐱‍👤 "
)

while true; do
    for frame in "${frames[@]}"; do
        clear
        echo -e "\n\n\n\t\t$frame"
        sleep 0.5
    done
done
