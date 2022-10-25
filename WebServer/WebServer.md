https://www.youtube.com/watch?v=q2OHvlr081s

# Copy một file từ local đên remote server
scp website.zip haikaito@192.168.68.137:/home/haikaito/project/webserver/website.zip
unzip website.zip


ls /var/www/html
sudo rm /var/www/html/index.nginx-debian.html
cd /var/www/html
sudo cp -r /home/haikaito/project/webserver/html/* .

# Enter to local host (http://192.168.68.137/)