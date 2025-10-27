#!/bin/bash

# Vérifier qu'un argument (fichier d'URL) est fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <fichier_urls>"
    exit 1
fi

i=1
while read -r line; do
    # Vérifier que la ligne n'est pas vide
    if [ -z "$line" ]; then
        continue
    fi

    # Code HTTP en suivant les redirections
    code_http=$(curl -o /dev/null -s -w "%{http_code}" -L "$line")

    # Encodage (charset)
encodage=$(curl -sI -L "$line" | grep -i "charset" | head -n1 | awk -F "=" '{print $2}')
encodage=$(echo "$encodage" | tr -d '\r\n')
    
    # Nombre de mots (suivre redirections)
    nb_mots=$(curl -sL "$line" | wc -w)

    # Affichage avec tabulations
    echo -e "${i}\t${line}\t${code_http}\t${encodage}\t${nb_mots}"

    ((i++))
done < "$1"


