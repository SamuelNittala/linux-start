#!/bin/bash

pkgs=("curl" "code --classic" "docker" "tilix" "postgresql" 
	  "pgadmin4" "minikube" "postman" "xbindkeys")

#pgadmin
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
read
#install
for pkg in "${pkgs[@]}" 
do
	sudo snap install $pkg || yes | sudo apt install $pkg
done
