# Use a lightweight Java 21 runtime image
FROM eclipse-temurin:21-jre

# Set working directory inside the container
WORKDIR /app

# Copy the built jar from target/ into the image
COPY target/spring-jenkins-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
