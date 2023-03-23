#!/bin/bash
count=0
aux=${RANDOM}.tmp
ls | grep -v '\.bak' > $aux
while read -r file
do
    if [ ! -f "${file}.bak" ]; then
        cp "$file" "${file}.bak"
        let count="$count + 1"
    fi
done < $aux
rm -i $aux
rm -i ${aux}.bak
echo "$count fichier(s) sauvegardé(s)."
