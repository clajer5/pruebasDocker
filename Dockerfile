# Imagen de dockerhub con Alpine y OpenJDK 8
FROM openjdk:8-alpine

# Versión de tomcat
ENV TOMCAT_VERSION 10.0.8

# Crear grupo y usuario para tomcat
RUN addgroup -S tomcat && adduser -S -G tp,cat -s /bin/nologin -h /opt/tomcat tomcat
# Descarga e instalació de tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz  && \ 
	tar -xzf apache-tomcat-10.0.8.tar.gz -C /opt && \
	ln -s /opt/apache-tomcat-10.0.8 /opt/tomcat && \
	rm apache-tomcat-10.0.8.tar.gz

# Directorio de trabajo
WORKDIR /opt/tomcat

# Informamos puerto usado
EXPOSE 8080

# Copia archivo war al directorio de tomcat
COPY SimpleJSPApp.war /opt/tomcat/webapps/

# Comando iniciar Tomcat
CMD ["bin/catalina.sh", "run"]
