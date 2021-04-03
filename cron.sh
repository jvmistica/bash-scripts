crontab -l | { cat; echo "0 */4 * * * bash /path/to/backup.sh"; } | crontab -
