FROM tomcat:9.0.82-jdk8-corretto-al2

RUN mkdir -p /usr/local/tomcat/webapps/SimpleJSPApp
RUN mkdir -p/usr/local/tomcat/conf/Catalina/localhost
COPY SimpleJSPApp.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
