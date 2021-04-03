crontab -l | { cat; echo "0 */4 * * * sh /path/to/backup.sh"; } | crontab -
