FROM tomcat:9.0-alpine

#ADD SimpleJSPApp.war /usr/local/tomcat/webapps/

EXPOSE 8080

COPY tomcat-users.xml conf/
RUN mkdir -p conf/Catalina/localhost
COPY manager.xml conf/Catalina/localhost

ADD SimpleJSPApp.war webapps/

WORKDIR $CATALINA_HOME

# Comando iniciar Tomcat
CMD ["bin/catalina.sh", "run"]
