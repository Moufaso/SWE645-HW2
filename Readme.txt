HW2 Documentation
Saman Hosseini

Steps:
1. Created "rancher" EC2 and assigned elastic ip: http://23.21.203.160.
2. Created "hw2-cluster-deployment" cluster in rancher to manage the pods.
3. Created "hw2-cluster-deployment-nodeport" to be able to access the webapp using port 32726.
4. Created "node" EC2 to run the pods and added inbound rule for ports 30000-32767.
5. Created "jenkins" EC2 and added the K8s config file.
6. Created the Jenkinsfile with 3 steps:
   - Build Application (tagged each bild with the BUILD_ID)
   - Push Docker Image
   - Deployment to rancher


GitHub Repository: https://github.com/Moufaso/SWE645-HW2.git
DockerHub Repository: https://hub.docker.com/repository/docker/moufaso/studentsurvey645
Rancher Elastic IP: http://23.21.203.160
Jenkins IP: http://54.167.224.6:8080
WebApp: http://54.234.182.190:32726/StudentSurvey/
   - the webapp url's ip will change everytime we restart the AWS Lab.