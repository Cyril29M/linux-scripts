#!/bin/bash
# Boucle conditionnelle
if [ $# -ne 2 ]; then
    echo "Usage : `basename $0` int1 int2"
else
    if [ $1 -gt $2 ]; then
        echo $1
    else
        echo $2
    fi
fi
