FROM tomcat:9.0.82-jdk8-corretto-al2

# Crear un directorio temporal
RUN mkdir -p /tmp/SimpleJSPApp

# Copiar el archivo WAR al directorio temporal
COPY SimpleJSPApp.war /tmp/SimpleJSPApp/

# Descomprimir el archivo WAR con jar
RUN mkdir -p /usr/local/tomcat/webapps/ROOT && \
    cd /usr/local/tomcat/webapps/ROOT && \
    jar -xf /tmp/SimpleJSPApp/SimpleJSPApp.war

# Exponer el puerto 8080
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]


