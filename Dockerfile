FROM ubuntu
MAINTAINER hemant.pati@gmail.com
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y wget && apt-get install -y curl
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz
RUN tar xvfz apache*.tar.gz
#RUN mv apache-tomcat-9.0.33/* /opt/tomcat/.
RUN apt-get install default-jdk -y
RUN java -version
WORKDIR /opt/tomcat/apache-tomcat-9.0.33
COPY LoginWebApp.war /opt/tomcat/apache-tomcat-9.0.33/webapps
EXPOSE 8086
CMD ["/opt/tomcat/apache-tomcat-9.0.33/bin/catalina.sh", "run"]
