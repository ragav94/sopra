FROM quay.io/eclipse/che-java8-maven:nightly
COPY src /home/app/src
COPY pom.xml /home/app
RUN mkdir -p /var/local/SP
RUN mvn -f /home/app/pom.xml clean package
EXPOSE 8080
