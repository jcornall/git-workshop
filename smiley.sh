#!/bin/bash

# Animated smiley face in terminal (Color + Polish)

# Frames for animation
frames=(
    "  😊  "
    "  😐  "
    "  😉  "
    "  😄  "
    "  🐱‍👤 "
    " SAUL NEEDS A PINT ASAP!! "
)

# Colors (ANSI escape codes)
colors=(
    "\033[1;31m" # Red
    "\033[1;32m" # Green
    "\033[1;33m" # Yellow
    "\033[1;34m" # Blue
    "\033[1;35m" # Magenta
    "\033[1;36m" # Cyan
)

# Animation speed (seconds)
delay=0.3

# Trap Ctrl+C to exit gracefully
trap "tput cnorm; tput sgr0; clear; exit" SIGINT

# Hide cursor
tput civis

while true; do
    for i in "${!frames[@]}"; do
        frame="${frames[$i]}"
        color="${colors[$((i % ${#colors[@]}))]}"

        # Get terminal size
        rows=$(tput lines)
        cols=$(tput cols)

        # Calculate center position
        row=$((rows / 2))
        col=$(( (cols - ${#frame}) / 2 ))

        # Move cursor, clear line, and print frame in color
        tput cup "$row" 0
        printf "%${cols}s" " "  # Clear the line
        tput cup "$row" "$col"
        echo -ne "${color}${frame}\033[0m"

        sleep "$delay"
    done
done
