#!/bin/bash

# Create the backups folder for the month (e.g. 202102)
backupsDir=/path/to/backups/$(date +%Y%m)
if [ ! -d $backupsDir ]; then
	mkdir $backupsDir
fi

# List all the projects to be backed-up and create a TAR file
# for each of them in the backups folder
projectsDir=/path/to/projects/
projects=(`ls $projectsDir`)
for project in ${projects[@]}
do
	tar -czvf $backupsDir/${project}_$(date +%Y%m%d%H%M%S).tar.gz -C $projectsDir ${project}
done
