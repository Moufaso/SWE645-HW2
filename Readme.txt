HW2 Documentation
Saman Hosseini

Steps:
1. Created Manger EC2 instance for rancher and Jenkins with elastic IP: 23.21.203.160
   - Installed: Docker, Rancher, JDK17, Jenkins, kubectl
2. Created Worker EC2 instance for running nodes.
   -Installed: Docker
3. Created security group with inbound rules for the following ports:
   - 22, 443, 80, 8080, 30000 - 32767 
4. Logged in to rancher:
   - Created k8s-cluster
   - Added Worker instance as a node to the cluster
   - Created SWE645 project and student-survey namespace
   - Created hw2-deployment with 3 replicas of the studentsurvey645 image.
   - Created nodeport to be able to connect to the pods.
5. Inside the Manager EC2 instance added jenkins user to the docker group so jenkins can create docker images:
   - sudo usermod -a -G docker jenkins
   - Restart jenkins
6. Created Jenkins pipeline with 3 steps inside the Jenkinsfile:
   - Build Application (tagged each build with the BUILD_ID)
   - Push Docker Image
   - Deployment to rancher

GitHub Repository: https://github.com/Moufaso/SWE645-HW2.git
DockerHub Repository: https://hub.docker.com/repository/docker/moufaso/studentsurvey645
Rancher: http://23.21.203.160
Jenkins: http://23.21.203.160:8080
Student Survey: http://54.163.50.136:31160/StudentSurvey/
Homepage: http://shossei-swe645-hw1.s3-website-us-east-1.amazonaws.com