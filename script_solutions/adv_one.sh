# Write a script that will zip a directory and back it up.
# Make sure that it includes today's date in the title.

date=$(date +%d%m%Y)
directory_name="git_repos"
backup_name="${directory_name}_${date}.tar.gz"

tar -zcvf ${backup_name} ${directory_name}
echo Backup of ${directory_name} taken. Backup archive: ${backup_name}
