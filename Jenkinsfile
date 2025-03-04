// Author: Saman Hosseini

pipeline {
   agent any

   environment {
      DOCKERHUB_CRED = credentials('dockerhub-id')
   }

   stages {
      stage('Build Application') {
         steps {
            script {
               checkout scm
               sh 'jar cvf StudentSurvey.war *'
               sh 'echo "$DOCKERHUB_CRED_PSW" | docker login --username $DOCKERHUB_CRED_USR --password-stdin'
               sh 'docker build -t moufaso/studentsurvey645:0.${BUILD_ID} .'
               sh 'rm -rf *.war'
            }
         }
      }

      stage('Push Docker Image') {
         steps{
            script {
               sh 'docker push moufaso/studentsurvey645:0.${BUILD_ID}'
               sh 'docker rmi moufaso/studentsurvey645:0.${BUILD_ID}'
            }
         }
      }
   }

   post {
      always {
         echo 'Cleaning up...'
      }
      success {
         echo 'Deployment successful.'
      }
      failure {
         echo 'Deployment failed!'
      }
   }
}