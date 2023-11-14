tomcat:9.0.82-jdk8-corretto-al2

ADD SimpleJSPApp.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
