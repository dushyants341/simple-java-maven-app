FROM openjdk:11
MAINTAINER dushyants341@gamil.com
COPY target/*.jar java_jar
ENTRYPOINT ["java","-jar","/java_jar"]
