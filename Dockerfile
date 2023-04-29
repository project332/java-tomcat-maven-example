# tis is sample docker file
FROM bitnami/git As clone
WORKDIR /git  
RUN git clone https://github.com/project332/java-tomcat-maven-example.git


FROM maven As build
WORKDIR /app
COPY --from=clone /git/java-tomcat-maven-example/ /app/
RUN mvn clean package



FROM tomcat:latest As deployment
MAINTAINER Bharat
COPY --from=build /app/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/java-tomcat-maven-example.war

