user_name="debian"
current_date=$(date +%d-%m-%Y)
current_time=$(date  +%H:%M)
chemin_script="/home/debian/Shell.exe/Job08"
new_file="number_connection_${current_date}-${current_time}.txt"
new_file_tar="number_connection_${current_date}-${current_time}.tar"
`last | grep "^$user_name" | wc -l > $new_file`
`tar -cvf "$chemin_script/$new_file_tar"  "$new_file"`
`mkdir  Backup`
`mv "$chemin_script/$new_file_tar"  "$chemin_script/Backup"`
`rm "$chemin_script/$new_file"`
