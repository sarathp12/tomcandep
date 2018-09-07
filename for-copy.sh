#! /bin/bash

cd /var/lib/jenkins/workspace/simple-webapp-tomcat

ssh jenkins@192.168.144.143

rm -rf webproject.war

exit

sudo scp *.war jenkins@192.168.144.143:/home/jenkins


