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
            archiveArtifacts artifacts: '**/*.war'
             }
         }

       stage ('deploy') {
        steps {
            publishOverSsh {
            server('terradock') {
                transferSet {
                    sourceFiles('/target/webproject.war')
                       }
                  }
               }
            }
          }
     }
  }      
           
