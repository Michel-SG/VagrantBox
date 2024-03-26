#!/bin/bash

echo "start curl in provisionner"
curl -fsSL https://get.docker.com -o install-docker.sh
echo "provisionner install docker"
sudo sh install-docker.sh
echo "end docker install"
echo "start docker service"
sudo systemctl start docker
echo "get status and enable docker service"
sudo systemctl enable docker
sudo systemctl status docker
sudo usermod -aG docker vagrant
sudo systemctl stop docker
sudo systemctl start docker
docker ps
