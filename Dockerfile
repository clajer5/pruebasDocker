FROM tomcat:9.0.82-jdk8-corretto-al2

# Crear un directorio temporal
RUN mkdir -p /tmp/SimpleJSPApp

RUN mkdir -p /usr/local/tomcat/conf/Catalina/localhost

# Copiar el archivo WAR al directorio temporal
COPY SimpleJSPApp.war /tmp/SimpleJSPApp/

# Descomprimir el archivo WAR
RUN tar -xf /tmp/SimpleJSPApp/SimpleJSPApp.war -C /usr/local/tomcat/webapps/SimpleJSPApp

# Exponer el puerto 8080
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]

