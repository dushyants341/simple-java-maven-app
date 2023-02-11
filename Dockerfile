FROM tomcat

MAINTAINER dushyants341@gmail
COPY target/*.jar /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
