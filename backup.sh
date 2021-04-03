#!/bin/bash
# List all the projects to be backed-up and create a TAR file
# for each of them in the backups folder

projects=(`ls /path/to/projects/`)
for project in ${projects[@]}
do
	tar -czvf /path/to/projects/${project}_$(date +%Y%m%d%H%M%S).tar.gz -C /path/to/projects/ ${project}
done

