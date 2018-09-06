pipeline {
    agent none
    tools  {
      maven 'maven 3.5.4'
      jdk 'jdk'
      }

    stages {
      
      stage ('build') { 
         agent {
           label 'master'
         }
          steps {
            echo "i am running"
            sh 'mvn clean package'
            archiveArtifacts artifacts: 'dist/webproject.zip'
             }
      
      stage ('deploy') {
        steps {
            publishOverSsh {
            server('terradock') {
                transferSet {
                    sourceFiles('webproject.zip')
                        }
                   }
                }
              }
            } 
          }
       }
   }
              
