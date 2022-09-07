FROM tomcat:latest
MAINTAINER Bharat
COPY target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/java-tomcat-maven-example.war

