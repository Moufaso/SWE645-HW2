HW2 Documentation
Saman Hosseini

Steps:
1. Created Manger EC2 instance for rancher and jenkins with elastic IP: 23.21.203.160
   - Installed: Docker, Rancher, JDK17, Jenkins, Kubectl
2. Created Worker EC2 instance for running nodes.
   -Installed: Docker
3. Created k8s-cluster on rancher and deployed hw2-deployment with nodeport service.
4. Created the Jenkinsfile with 3 steps:
   - Build Application (tagged each biuld with the BUILD_ID)
   - Push Docker Image
   - Deployment to rancher

GitHub Repository: https://github.com/Moufaso/SWE645-HW2.git
DockerHub Repository: https://hub.docker.com/repository/docker/moufaso/studentsurvey645
Rancher: http://23.21.203.160
Jenkins: http://23.21.203.160:8080
WebApp: http://54.88.140.236:32726/StudentSurvey/
   - the webapp url's ip will change everytime we restart the AWS Lab.