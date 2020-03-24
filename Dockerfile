FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN mkdir /usr/local/tomcat
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz -O /tmp/apache-tomcat-9.0.33.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-9.0.33.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.33/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
