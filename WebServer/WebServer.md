# NGINX
## Guildeline
https://www.youtube.com/watch?v=q2OHvlr081s

## Copy local file to remote server
```bash
scp website.zip haikaito@192.168.68.137:/home/haikaito/project/webserver/website.zip
unzip website.zip
```

## Install nginx
```bash
sudo apt update
sudo apt install nginx

sudo systemctl app list
sudo ufw status
sudo ufw allow 'Nginx Full'
```

## Config nginx location
```bash
ls /var/www/html
sudo rm /var/www/html/index.nginx-debian.html
cd /var/www/html
sudo cp -r /home/haikaito/project/webserver/html/* .
```