#!/bin/bash

pkgs=("curl" "code --classic" "docker" "tilix" "postgresql" 
	  "dconf-cli" "minikube" "postman" "xbindkeys")

for pkg in "${pkgs[@]}" 
do
	echo loading  
	sudo snap install $pkg || yes | sudo apt install $pkg
done
