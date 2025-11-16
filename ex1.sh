#!/bin/bash

i=1
OUTFILE="../tableaux/tableau-fr.tsv"
mkdir -p ../tableaux
echo -e "Numéro\tURL\tCode_HTTP\tEncodage\tNb_mots" > "$OUTFILE"
while read -r url;
do
  [ -z "$url" ] && continue 
code=$(curl -s -o /dev/null -w "%{http_code}" "$url")
encoding=$(curl -sI "$url" | grep -i "charset=" | head -n1 | sed 's/.*charset=//I' | tr -d '\r')
nbmots=$(curl -s "$url" | wc -w)
echo -e "${i}\t${url}\t${code}\t${encoding}\t${nbmots}" >> "$OUTFILE"
((i++))
done < "../urls/fr.txt"
