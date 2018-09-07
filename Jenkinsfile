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
            sh 'ssh jenkins@192.168.144.143 mkdir deploy'
            sh 'cd /var/lib/jenkins/workspace/simple-webapp-tomcat'
            sh 'scp *.war jenkins@192.168.144.143:/deploy'
                }
           }
      
      }
  }      
           
