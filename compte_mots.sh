#!/usr/bin/bash
# Script bonus : compte mots et bigrammes et génère un fichier HTML
# Usage : ./compte_mots_bonus.sh <fichier_html_entree> <fichier_html_sortie>

if [ $# -ne 2 ]; then
    echo "Usage: $0 <fichier_entree> <fichier_sortie>"
    exit 1
fi

FICHIER_ENTREE=$1
SORTIE=$2

if [ ! -f "$FICHIER_ENTREE" ]; then
    echo "Erreur : le fichier '$FICHIER_ENTREE' n'existe pas."
    exit 1
fi

# Extraire le texte du HTML
TEXTE=$(cat "$FICHIER_ENTREE" | lynx -dump -stdin 2>/dev/null)

# Compter les mots
declare -A compteur_mots
for mot in $TEXTE; do
    mot=$(echo "$mot" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]')
    if [ -n "$mot" ]; then
        compteur_mots[$mot]=$(( ${compteur_mots[$mot]:-0} + 1 ))
    fi
done

# Compter les bigrammes
declare -A compteur_bigrammes
PRECEDENT=""
for mot in $TEXTE; do
    mot=$(echo "$mot" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]')
    if [ -n "$mot" ]; then
        if [ -n "$PRECEDENT" ]; then
            BIGRAMME="$PRECEDENT $mot"
            compteur_bigrammes[$BIGRAMME]=$(( ${compteur_bigrammes[$BIGRAMME]:-0} + 1 ))
        fi
        PRECEDENT=$mot
    fi
done

# Générer le HTML
echo "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Feuille Bonus : Compte de mots et bigrammes</title>
<style>
table { border-collapse: collapse; margin-bottom: 20px; }
th, td { border: 1px solid black; padding: 5px; }
th { background-color: #eee; }
</style>
</head>
<body>
<h2>Compte des mots</h2>
<table>
<tr><th>Mot</th><th>Fréquence</th></tr>" > "$SORTIE"

for mot in "${!compteur_mots[@]}"; do
    echo "<tr><td>$mot</td><td>${compteur_mots[$mot]}</td></tr>" >> "$SORTIE"
done

echo "</table>
<h2>Compte des bigrammes</h2>
<table>
<tr><th>Bigramme</th><th>Fréquence</th></tr>" >> "$SORTIE"

for bg in "${!compteur_bigrammes[@]}"; do
    echo "<tr><td>$bg</td><td>${compteur_bigrammes[$bg]}</td></tr>" >> "$SORTIE"
done

echo "</table>
</body>
</html>" >> "$SORTIE"

echo "Feuille bonus générée : $SORTIE"
