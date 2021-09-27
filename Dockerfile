FROM tomcat:8
COPY target/spring-security.war /usr/local/tomcat/webapps/
