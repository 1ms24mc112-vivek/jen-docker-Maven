# Use OpenJDK 17 base image
FROM openjdk:17-alpine

# Set working directory
WORKDIR /app

# Copy the jar from target
COPY target/maven_app-1.0-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java","-jar","app.jar"]
