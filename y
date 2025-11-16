#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

URL=$1

# Récupération du texte brut
curl -sL "$URL" | lynx -dump -stdin -nolist > texte.txt

# Comptage des mots
echo "---- Comptage des mots ----"
tr '[:upper:]' '[:lower:]' < texte.txt | \
tr -c '[:alnum:]' '[\n*]' | \
grep -v '^$' | \
sort | uniq -c | sort -nr | head -20

echo ""

# Comptage des bigrammes
echo "---- Comptage des bigrammes ----"
tr '[:upper:]' '[:lower:]' < texte.txt | \
tr -c '[:alnum:]' '[\n*]' | \
grep -v '^$' | \
awk '{
    if (prev != "") {
        print prev, $0
    }
    prev=$0
}' | sort | uniq -c | sort -nr | head -20

