# Use the latest OpenJDK 17 slim image as the base image
FROM openjdk:17-jdk-slim

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code to the working directory
COPY pom.xml .
COPY src ./src

# Build the project using Maven
RUN mvn clean package -DskipTests

# Copy the generated JAR file to the working directory
COPY target/backend-0.0.1-SNAPSHOT.jar app.jar

# Set the command to run the JAR file
CMD ["java", "-jar", "app.jar"]
