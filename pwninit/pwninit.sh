#!/bin/bash

if [ -n "$3" ]; then
    python3 ~/tools/alt-pwninit/pwninit.py -b $1 -l $2 --ld $3
else
    python3 ~/tools/alt-pwninit/pwninit.py -b $1 -l $2
fi
