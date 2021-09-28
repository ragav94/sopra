FROM tomcat:8.5.47-jdk8-openjdk

USER root

COPY src /home/app/src
COPY pom.xml /home/app

RUN mkdir -p /var/local/SP
RUN mvn -f /home/app/pom.xml clean package

EXPOSE 8080

COPY spring-security.war /usr/local/tomcat/webapps/
