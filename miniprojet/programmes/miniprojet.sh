<<<<<<< HEAD
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
=======
#!/usr/bin/bash
if [ $# -ne 2 ]; then
    echo "Ce programme demande deux arguments : 1 fichier d'entrée contenant des urls et 1 fichier sortie HTML"
    exit
fi

FICHIER_URLS=$1
SORTIE=$2

if [ ! -f "$FICHIER_URLS" ]; then
    echo "Erreur : le fichier '$FICHIER_URLS' n'existe pas."
    exit
fi

NB_LIGNE=0

# Début du fichier HTML
echo "<!DOCTYPE html>
<html>
xq<head>
<meta charset=\"UTF-8\">
<title>Résultats Mini-Projet</title>
</head>
<body>
<h2>Tableau des Résultats</h2>
<table border=\"1\" cellpadding=\"5\" cellspacing=\"0\">
<tr><th>Numéro</th><th>Adresse</th><th>Code Réponse</th><th>Encodage UTF-8</th><th>Nombre de mots</th></tr>" > "$SORTIE"

while read -r LINE; do
    if [[ $LINE =~ ^https?:// ]]; then
        NB_LIGNE=$((NB_LIGNE+1))
        CODE_ET_ENCODAGE=$(curl -s -L -i -o "tmp.txt" -w "%{http_code}\n%{content_type}" "$LINE")
        CODE=$(echo "$CODE_ET_ENCODAGE" | head -n 1)

        if [ "$CODE" -eq 0 ]; then
            echo "<tr><td>$NB_LIGNE</td><td>$LINE</td><td>ERREUR</td><td>ERREUR</td><td>ERREUR</td></tr>" >> "$SORTIE"
            continue
        fi

        ENCODAGE=$(echo "$CODE_ET_ENCODAGE" | grep -Eo "charset=.*")
        if [[ "$ENCODAGE" =~ UTF-8|utf-8 ]]; then
            ENCODAGE_OU_PAS="OUI"
        else
            ENCODAGE_OU_PAS="NON"
        fi

        NB_MOTS=$(lynx -dump -stdin < tmp.txt | wc -w)

        echo "<tr><td>$NB_LIGNE</td><td><a href=\"$LINE\">$LINE</a></td><td>$CODE</td><td>$ENCODAGE_OU_PAS</td><td>$NB_MOTS</td></tr>" >> "$SORTIE"
    fi
done < "$FICHIER_URLS"

# Fin HTML
echo "</table>
</body>
</html>" >> "$SORTIE"

>>>>>>> 08e723f (Copie du projet local vers le dépôt GitHub)


