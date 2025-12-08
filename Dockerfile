FROM eclipse-temurin:17-jdk



# Copier le jar buildé dans l'image
COPY target/devops-integration.jar devops-integration.jar

# Exposer le port de l'application
EXPOSE 8080

# Commande de démarrage
ENTRYPOINT ["java","-jar","/devops-integration.jar"]