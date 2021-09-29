FROM maven:3.8.1-jdk-11-openj9
COPY src /home/app/src
COPY pom.xml /home/app
RUN mkdir -p /var/local/SP
RUN mvn -f /home/app/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java","/home/app/target/spring-security.war"]
