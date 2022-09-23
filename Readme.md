*CRON JOB SCHEDULE*
**crontab -l //list crontab**
**crontab -e //edit crontab**
**crontab -r //remove crontab**
0 3 * * * /home/ubuntu/l1_p5.sh >> /var/log/db-backup.log
