FROM tomcat9

MAINTAINER dushyants341@gmail
RUN cp target/*.jar /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
