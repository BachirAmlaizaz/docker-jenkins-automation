FROM eclipse-temurin:17-jdk



# Copier le jar buildé dans l'image
COPY target/devops-integration.jar devops-integration.jar

# Exposer le port de l'application
EXPOSE 8080

# Commande de démarrage
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
#
ENV DOCKERVERSION=18.03.1-ce
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz