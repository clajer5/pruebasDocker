tomcat:9-jre8-alpine


ADD SimpleJSPApp.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
