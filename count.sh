#!/bin/bash
#La variable $# renvoie une valeur
#condition du comparateur 
if [ $# -ne 1 ]; then
    echo "Usage : `basename $0` int"
#Condition non rempli
else
    i=1
#bloucle a obention du résultat
    while [ $i -le $1 ]; do
        echo $i
        let i="$i + 1"
    done
fi
