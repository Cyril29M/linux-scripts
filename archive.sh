#!/bin/bash

# Vérification du dossier utilisateur
if [ -d "/home/$1" ];then
 echo "L'utilisateur $1 existe !";
else
echo "L'utilisateur $1 n'existe pas !"
fi

# Vérification des droits administrateur
if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté en tant qu'administrateur"
    exit 1
fi

# Nom de la sauvegarde avecnomage et la date au format ISO 8601
backup_name="$1-$(date +'%Y-%m-%dT%H:%M:%S').tar.gz"

# Chemin du dossier personnel de l'utilisateur
user_home="/home/$1"

# Chemin de sauvegarde
backup_path="/var/backups/$1/$backup_name"

# Création du dossier de sauvegarde s'il n'existe pas
mkdir -p "$(dirname $backup_path)"

# Sauvegarde du dossier personnel
tar -czvf "$backup_path" "$user_home"


# Copie de la sauvegarde sur le serveur distant via rsync et ssh
#rsync -avz -e ssh "$backup_path" simplon@simplon:/backup/

# Suppression de la sauvegarde locale
rm "$backup_name"