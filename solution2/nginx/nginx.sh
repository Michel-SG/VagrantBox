#!/bin/bash

echo "start provision"
sudo apt-get update
sudo apt-get install nginx -y
sudo service nginx enable
echo "remove :: file /etc/nginx/sites-enabled/default"
sudo rm -rf /etc/nginx/sites-enabled/default
# echo "upstream testapp {
#         server 10.0.0.11;
#         server 10.0.0.12;
# }
# server {
#         listen 80 default_server;
#         listen [::]:80 default_server ipv6only=on;
#         # Make site accessible from http://localhost/
#         server_name localhost;

#         location / {
#                 root /var/share/nginx/html;
#         }
#         location ~ ^/(auth|api|flask) {
#             client_max_body_size 5M;
#             proxy_pass http://testapp;
#         }
# }" >> /etc/nginx/sites-enabled/default
sudo cp -R /home/vagrant/nginx.conf /etc/nginx/sites-enabled/default
echo "delete :: file /var/www/html/index.nginx-debian.html"
sudo rm -rf /var/www/html/index.nginx-debian.html
echo "copy :: file /var/www/html/index.html"
sudo cp -R /tmp/index.html /var/www/html/
echo "end :: copy file"
echo "reload  :: nginx file"
sudo service nginx reload
echo "end :: provision"
