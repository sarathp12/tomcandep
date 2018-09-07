#! /bin/bash

sudo rm -rf /home/jenkins/workspace/simple-webapp-tomcat/*.war
cp /home/jenkins/*.war /home/jenkins/workspace/simple-webapp-tomcat

cd /home/jenkins/workspace/simple-webapp-tomcat

sudo docker build -t webserver:v20 .


sudo docker run -d --rm -p 9095:8080 --name webproject webserver:v20 
