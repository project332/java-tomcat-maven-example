FROM tomcat:8.0.20-jre8
MAINTAINER cts/android_deployment_team/v1.1
COPY  java-tomcat-maven-example.war /usr/local/tomcat/webapps/java-tomcat-maven-example.war
