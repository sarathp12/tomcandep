#! /bin/bash

cd /var/lib/jenkins/workspace/simple-webapp-tomcat/target
sudo scp *.war jenkins@192.168.144.143:/home/jenkins


