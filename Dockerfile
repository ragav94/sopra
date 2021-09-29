FROM tomcat:8
COPY src /home/app/src
COPY pom.xml /home/app
COPY spring-security.war /usr/local/tomcat/webapps/
