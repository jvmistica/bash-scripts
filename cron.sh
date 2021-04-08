#!/bin/bash

# Schedule backup to run every 4 hours
crontab -l | { cat; echo "0 */4 * * * bash /path/to/backup.sh"; } | crontab -
