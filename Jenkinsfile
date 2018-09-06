pipeline {
    agent none
    tools  {
      maven 'maven 3.5.4'
      jdk 'jdk1.8.0'
      }

    stages {
      stage ('build') { 
         agent {
           label 'master'
         }
          steps {
            sh 'mvn clean package'
             }
          }
       }
   }
              
