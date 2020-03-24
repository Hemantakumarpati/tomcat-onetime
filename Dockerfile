FROM tomcat:latest
RUN mkdir /opt/tomcat
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz /tmp 
RUN cd /tmp && tar xvfz apache-tomcat-9.0.33.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.33/* /opt/tomcat/
EXPOSE 8090
CMD /opt/tomcat/catalina.sh run
