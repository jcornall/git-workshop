#!/bin/bash

# Animated smiley face in terminal (Improved Version)

# Frames for animation
frames=(
"  😊  "
"  😐  "
"  😉  "
"  😄  "
"  🐱‍👤 "
" SAUL NEEDS A PINT ASAP!! "
)

# Animation speed (seconds)
delay=0.3

# Trap Ctrl+C to exit gracefully
trap "tput cnorm; tput sgr0; clear; exit" SIGINT

# Hide cursor
tput civis

while true; do
    for frame in "${frames[@]}"; do
        # Get terminal size
        rows=$(tput lines)
        cols=$(tput cols)

        # Calculate center position
        row=$((rows / 2))
        col=$(( (cols - ${#frame}) / 2 ))

        # Move cursor and print frame
        tput cup "$row" "$col"
        echo -ne "$frame"

        sleep "$delay"
    done
done
