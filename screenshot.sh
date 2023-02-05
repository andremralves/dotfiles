#!/bin/sh

timestamp="$(date +%Y%m%d%H%M%S)"
targetbase="$HOME/Pictures/scrot"

scrot -l style=dash,width=3,color="red"  -e 'xclip -selection clipboard -t image/png -i $f' -s $targetbase/$timestamp.png
