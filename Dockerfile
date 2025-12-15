# Dockerfile
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the built jar from Maven target
COPY target/maven_app-1.0-SNAPSHOT.jar app.jar

# Expose the port (adjust if your app uses another port)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
