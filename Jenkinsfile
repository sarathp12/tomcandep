pipeline {
    agent none

    stages {
      stage ('build') { 
         agent any
          steps {
            checkout scm
            sh 'mvn clean package'
             }
          }
       }
   }
              
