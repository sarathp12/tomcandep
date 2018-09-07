#! /bin/bash

cd /var/lib/jenkins/workspace/simple-webapp-tomcat/target
ssh jenkins@192.168.144.143 rm -rf /home/jenkins/*.war
sudo scp *.war jenkins@192.168.144.143:/home/jenkins


