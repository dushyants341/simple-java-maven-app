FROM tomcat

MAINTAINER dushyants341@gmail
COPY target/*.jar /usr/local/tomcat/webapps/my-app-1.0-SNAPSHOT.jar

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
