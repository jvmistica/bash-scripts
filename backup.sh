# Creates a TAR file of a project in the backups folder
tar -czvf /home/<user>/backups/projects/<project>_$(date +%Y%m%d%H%M%S).tar.gz -C /home/<user>/projects/shell/ <project>
