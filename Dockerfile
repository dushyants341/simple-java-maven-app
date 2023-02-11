FROM centos:7

MAINTAINER dushyants341@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN yum update -y
RUN yum install tar* -y
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
RUN cp target/*.jar /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
