#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade

### Install Docker
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
sudo usermod -aG docker $USER

### Docker Pull
sudo docker pull codercom/code-server:latest
sudo docker pull paperist/alpine-texlive-ja

ln -s /vagrant/workspace ~
