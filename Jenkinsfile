pipeline {
    agent none

    stages {
      stage ('build') { 
         agent {
           label 'master'
         }
          steps {
            checkout scm
            sh 'mvn clean package'
             }
          }
       }
   }
              
