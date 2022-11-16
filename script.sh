#!/urs/bin/bash
# traitement de l'année 2016, on crée on écrase le fichier sortie.txt
echo "pour l'année 2016" > sortie.tx
grep "Location" 2016*.ann | wc -l >> sortie.txt
# traitement pour l'année 2017, on écrit à la suite du fichier
echo "pour l'année 2017" >> sortie.txt
# traitement pour l'année 2018, on écrit à la suite du fichier
echo "pour l'année 2018" >> sortie.txt
grep "Location" 2018*.ann | wc -l >> sortie.txt



