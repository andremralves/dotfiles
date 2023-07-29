#!/bin/bash

curr_bright=$(light)
#echo "Initial brightness: $curr_bright"

if [ "$1" == "dec" ]; then
    if (( $(echo "$curr_bright == 1" | bc -l) )); then
        light -S 1
    elif (( $(echo "$curr_bright == 5" | bc -l) )); then
        light -U 4
    elif (( $(echo "$curr_bright <= 20" | bc -l) )); then
        light -U 5
    else
        light -U 10
    fi
elif [ "$1" == "inc" ]; then
    if (( $(echo "$curr_bright == 1" | bc -l) )); then
        light -A 4
    elif (( $(echo "$curr_bright <= 15" | bc -l) )); then
        light -A 5
    else
        light -A 10
    fi
fi

#curr_bright=$(light)
#echo "After script: $curr_bright"
