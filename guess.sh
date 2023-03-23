let nb_myst="$RANDOM % 1000 + 1"
nb_try=10
while [ $nb_try -ge 1 ]
do
    read -p "Entrez un nombre entre 1 et 1000 : " try
    if [ $try -gt $nb_myst ]; then
        echo "Le nombre est plus petit."
    elif [ $try -lt $nb_myst ]; then
        echo "Le nombre est plus grand."
    else
        echo "Vous avez gagné !"
        exit 0
    fi
    let nb_try="$nb_try - 1"
    echo "Il vous reste $nb_try essais."
done
echo "Vous avez perdu ! Le nombre mystère était $nb_myst."
