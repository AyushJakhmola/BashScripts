#!/bin/bash
systemctl status mysql.service | grep 'active' > /dev/null 2>&1
if [ $? != 0 ];
then
    echo "mysql service is stopped"
    else
    echo "mysql service is running"
    systemctl stop mysql.service
fi        
    sudo mysqldump -u root --all-databases > "$(date +%d-%m-20%y,Time=%T).sql"
    aws s3 cp "$(date +%d-%m-20%y,Time=%T).sql" s3://mydb-database-backup/
    systemctl starp mysql.service
