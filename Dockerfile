FROM ubuntu:latest
RUN sudo apt-get -y update && apt-get -y upgrade && apt-get install -y wget
RUN sudo mkdir -p /usr/local/tomcat
RUN sudo cd /tmp
RUN sudo wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz -O /tmp/apache-tomcat-9.0.33.tar.gz
RUN sudo pwd
RUN sudo chmod 777 /tmp/apache-tomcat-9.0.33.tar.gz
RUN sudo cd /tmp 
RUN sudo cd /usr/local/tomcat && tar xzvf /tmp/apache-tomcat-9.0.33.tar.gz
#RUN sudo cp -r /tmp/apache-tomcat-9.0.33 /usr/local/tomcat/
EXPOSE 8080
#CMD /usr/local/tomcat/bin/catalina.sh run
