#!/bin/bash

#-----------------------------
#Script Update Host in phpiPAM
#-----------------------------

if [[ "$1" == "-h" || "$1" == "" ]]; then
	echo "Command Parameters"
	echo "--cron		=		Running Ontime in Crontab"
	echo "--pm2		=		Running Realtime Logs For PM2"
	echo "--pm2 <miniute>	=		Running Realtime FLogs For PM2 With Assign Minutes (Number) exp: 5,10,15"
	exit 0
fi

cron(){
   /usr/bin/docker exec -i phpipam bash -c "cd /var/www/html/phpipam-agent; /usr/local/bin/php index.php update"
}
pm2(){
   while true; do
      /usr/bin/docker exec -i phpipam bash -c "cd /var/www/html/phpipam-agent; /usr/local/bin/php index.php update"
      echo "Running Update Hosts Successfully!"
      sleep 900
   done
}

if [[ "$1" == "--cron" || "$1" == "" ]]; then
	cron
fi

if [ "$1" == "--pm2" ]; then
	pm2
fi
