#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# toggle between pt-br and us keyboard layout
if [ $current_layout = "us" ]; then
    setxkbmap -model abnt2 -layout br
else
    setxkbmap us
fi

# switch ESC and CAPS
xmodmap ~/.xmodmap

