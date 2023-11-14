FROM tomcat:8.0-alpine

ADD SimpleJSPApp.war /usr/local/tomcat/webapps/

EXPOSE 8080

# Comando iniciar Tomcat
CMD ["bin/catalina.sh", "run"]
