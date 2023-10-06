path="/home/debian/Shell.exe/Job09/"
echo  "$path"

    while IFS="," read -r id prenom nom mdp role; do
        username=$(echo "$prenom.$nom" | tr '[:upper:]' '[:lower:]')

        # Vérifiez la longueur du nom d'utilisateur
        if [ ${#username} -lt 3 ]; then
            exit 0
        fi

        nrole=$(echo $role | tr -d '\r' | cat -t)
        sudo useradd $username
        echo "$username:$mdp" | sudo chpasswd
        if [ $nrole = "Admin" ]; then
            sudo usermod -aG sudo $username
            echo "did $username"
        else
            sudo usermod -aG users $username
            echo "did $username"
        fi
    done < <(tail -n +2 $path/Shell_Userlist.csv | tr -d " " && echo "")

















