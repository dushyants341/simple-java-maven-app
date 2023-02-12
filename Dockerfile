FROM openjdk:11
MAINTAINER dushyants341@gamil.com
COPY target/*.jar my-app-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
