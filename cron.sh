crontab -l | { cat; echo "* * * * * sh /path/to/backup.sh"; } | crontab -
