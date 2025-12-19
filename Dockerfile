FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /app

# Copiar archivos del proyecto
COPY pom.xml .
COPY src ./src

# Build de la aplicacion
RUN mvn clean package -DskipTests

# Runtime stage con imagen actualizada
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copiar el JAR construido
COPY --from=builder /app/target/*.jar app.jar

# Exponer puerto
EXPOSE 8080

# Ejecutar la aplicacion
ENTRYPOINT ["java", "-jar", "app.jar"]