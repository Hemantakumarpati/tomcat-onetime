FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y wget
RUN mkdir -p /usr/local/tomcat
RUN pwd
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz -O cd /home/jenkinsvm/Tomcat \
/apache-tomcat-9.0.33.tar.gz
RUN pwd
RUN cd /tmp chmod 777 apache-tomcat-9.0.33.tar.gz
RUN cd /tmp && tar xvf apache-tomcat-9.0.33.tar.gz
RUN cp apache-tomcat-9.0.33/* /usr/local/tomcat/
EXPOSE 8080
#CMD /usr/local/tomcat/bin/catalina.sh run
