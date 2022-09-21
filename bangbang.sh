#!/bin/bash

# Parse Terminal window coordinates 
x=$(xdotool getwindowfocus getwindowgeometry --shell | sed -n 2p | sed 's/[A-Z]//g' | sed 's/\=//g')
y=$(xdotool getwindowfocus getwindowgeometry --shell | sed -n 3p | sed 's/[A-Z]//g' | sed 's/\=//g')
w=$(xdotool getwindowfocus getwindowgeometry --shell | sed -n 4p | sed 's/[A-Z]//g' | sed 's/\=//g')
h=$(xdotool getwindowfocus getwindowgeometry --shell | sed -n 5p | sed 's/[A-Z]//g' | sed 's/\=//g')

# Take screenshot of terminal window based on x,y,w,h
scrot -a $x,$y,$w,$h ~/Pictures/bangbang
