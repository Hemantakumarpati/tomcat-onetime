FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN mkdir -p /usr/local/tomcat
RUN pwd
RUN tar xvfz apache-tomcat-9.0.33.tar.gz
RUN cp apache-tomcat-9.0.33.tar.gz /usr/local/tomcat/
EXPOSE 8080
#CMD /usr/local/tomcat/bin/catalina.sh run
