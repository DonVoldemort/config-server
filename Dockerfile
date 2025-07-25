# Usa una imagen base oficial de OpenJDK 17
FROM eclipse-temurin:17-jdk-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el jar compilado al contenedor
COPY target/config-server-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto del config server (puerto 8888)
EXPOSE 8888

# Comando para ejecutar la aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
