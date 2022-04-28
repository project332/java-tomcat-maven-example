FROM tomcat:8.0.20-jre8
MAINTAINER Siva
COPY target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/java-tomcat-maven-example.war

