#!/bin/bash

# scrot -a 1,30,400,40 ~/Pictures/test2

# Parse Terminal window coordinates
# Parse coordinates for X
xdotool getwindowfocus getwindowgeometry --shell | sed -n 2p | sed 's/[A-Z]//g' | sed 's/\=//g'
# Parse coordinates for Y
xdotool getwindowfocus getwindowgeometry --shell | sed -n 3p | sed 's/[A-Z]//g' | sed 's/\=//g'
# Parse coordinates for WIDTH
xdotool getwindowfocus getwindowgeometry --shell | sed -n 4p | sed 's/[A-Z]//g' | sed 's/\=//g'
# Parse coordinates for HEIGHT
xdotool getwindowfocus getwindowgeometry --shell | sed -n 5p | sed 's/[A-Z]//g' | sed 's/\=//g'
