# Imagen de dockerhub con Alpine y JRE 8
FROM tomcat:alpine

# Informamos puerto usado
EXPOSE 8080


# Comando iniciar Tomcat
CMD ["catalina.sh", "run"]