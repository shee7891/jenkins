# 1. Use a lightweight Java runtime
FROM eclipse-temurin:21-jre-alpine

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy the built JAR from target folder into container
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 4. Expose Spring Boot default port
EXPOSE 8080

# 5. Command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]