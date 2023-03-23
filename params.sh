#!/bin/bash
echo "nom : `basename $0`"
echo "chemin : `dirname $0`"
count=1
#Boucle de résultat incrémentation sur variable $1
while [ $# -gt 0 ]; do
    echo "argument $count : $1"
    let count=$count+1
    shift
done
