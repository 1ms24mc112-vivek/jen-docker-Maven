# Use a supported OpenJDK base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Maven built jar
COPY target/maven_app-1.0-SNAPSHOT.jar app.jar

# Expose port (if your app runs on 8080)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
