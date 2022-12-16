#!/bin/bash
# Based on: https://stackoverflow.com/questions/2371248/how-to-convert-timestamps-to-dates-in-bash
# Created by Yevgeniy Goncharov, https://sys-adm.in

LANG=C
if [[ -z "$1" ]]
then
    if [[ -p /dev/stdin ]]    # input from a pipe
    then
        read -r p
    else
        echo "No timestamp given." >&2
        exit
    fi
else
    p=$1
fi
date -d "@$p" +%c
