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
               sh 'rm -rf *.war'
               sh 'jar -cvf StudentSurvey.war StudentSurvey/*'
               sh 'echo ${BUILD_TIMESTAMP}'
               sh 'echo "$DOCKERHUB_CRED_PSW" | docker login --username $DOCKERHUB_CRED_USR --password-stdin'
               def customImage = docker.build("moufaso/studentsurvey645:${BUILD_TIMESTAMP}")
            }
         }
      }

      stage('Push Docker Image') {
         steps{
            script {
               sh 'docker push moufaso/studentsurvey645:${BUILD_TIMESTAMP}'
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