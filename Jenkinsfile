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
         agent {
            label 'master'
           }
         steps {
            sh 'chmod u+x for-copy.sh'
            sh './for-copy.sh'          

                }
           }
       stage ('docker build') { 
         agent {
             label 'docker'
            }
         steps { 
           sh 'chmod u+x firstexec.sh'
           sh './firstexec.sh'
           }
        }
      
      }
  }      
           
