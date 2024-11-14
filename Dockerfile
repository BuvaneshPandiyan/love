# Use a base image with Java (OpenJDK)
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target folder into the Docker container
COPY demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expose the port your Spring Boot app will run on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/demo.jar"]
