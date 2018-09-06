pipeline {
    agent none

    stages {
      stage ('build') { 
         agent master
          steps {
            checkout scm
            sh 'mvn clean package'
             }
          }
       }
   }
              
