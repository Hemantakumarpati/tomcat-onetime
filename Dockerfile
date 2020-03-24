FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN mkdir -p /usr/local/tomcat
RUN pwd
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz /tmp/apache-tomcat-9.0.33.tar.gz
RUN tar xvfz apache-tomcat-9.0.33.tar.gz
RUN cp -Rv /apache-tomcat-9.0.33/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
