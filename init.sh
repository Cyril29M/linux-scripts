#!/bin/bash
mkdir $1
cd ./$1
touch README.md
chmod 666 README.md
touch change.log
chmod 666 change.log
echo "Dossier créé = $1"
ls -gG
