#  author: Saman Hosseini

FROM tomcat:9.0-jdk15
COPY StudentSurvey/StudentSurvey.war /usr/local/tomcat/webapps/