#!/usr/bin/env bash

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie

# !!!!!!
# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!

if [ $# -ne 2 ] # Si le nb d'argument est différent de 2 alors : (avec ne = not equal)
then
    echo "Ce programme demande deux fichiers en argument."
    exit
fi

if [ -f $1 ] # Si l'argument est un fichier qui existe alors :
    then
        echo "Fichier OK"
    else
        echo "Ceci n'est pas un fichier"
        exit
fi

# modifier la ligne suivante pour créer effectivement du HTML
echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

lineno=1;

while read -r line;
do
echo
done < $fichier_urls

while read -r line;
do
    echo "ligne $lineno: $line";
    entete_serveur=$(curl -I -s $line) #curl est en silencieux avec -s
    echo "entete_serveur"
    lineno=$((lineno+1));
done < $fichier_urls
bash script_URL_bash.sh url_all_fremd.txt tableau.HTML
