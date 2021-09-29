FROM tomcat:8
COPY src /home/app/src
COPY pom.xml /home/app
RUN mkdir -p /var/local/SP
COPY spring-security.war /usr/local/tomcat/webapps/
