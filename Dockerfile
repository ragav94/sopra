FROM quay.io/eclipse/che-java8-maven:nightly

USER ubuntu

COPY src /home/app/src
COPY pom.xml /home/app

#ERROR
#RUN nocmd

RUN mkdir -p /var/local/SP

RUN mvn -f /home/app/pom.xml clean package

EXPOSE 8080

ENTRYPOINT ["java","/home/app/target/spring-security.war"]
