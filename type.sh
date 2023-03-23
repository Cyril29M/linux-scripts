#!/bin/bash
[ $# -ne 1 ] && echo "Usage : `basename $0` arg" && exit 1
echo -n "Le mot contient :"
case $1 in
    *[aeiouy]*) echo -n " Voyelle";;&
    *[^aeiouy]*) echo -n " Consonne";;&
    *[0-9]*) echo -n " Chiffre";;&
    *) echo ".";;
esac
