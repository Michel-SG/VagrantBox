#!/bin/bash

echo "start provision"
sudo apt-get update
sudo apt-get install nginx -y
sudo service nginx enable
sudo rm -rf /var/www/html/index.nginx-debian.html
sudo cp -R /tmp/index2.html /var/www/html/index.html
echo "remove :: file /etc/nginx/sites-enabled/default"
sudo rm -rf /etc/nginx/sites-enabled/default
echo "copy into :: file /etc/nginx/sites-enabled/default"
sudo cp -R /home/vagrant/nginx.conf /etc/nginx/sites-enabled/default
echo "reload:: ::  nginx"
sudo service nginx reload
echo "end provision"
