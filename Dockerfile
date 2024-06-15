# Use the latest OpenJDK 17 image as the base image
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code to the working directory
COPY pom.xml .
COPY src ./src

# Install Maven and build the project
RUN apt-get update && apt-get install -y maven
RUN mvn clean package -DskipTests

# Copy the generated JAR file to the working directory
COPY target/backend-0.0.1-SNAPSHOT.jar app.jar

# Set the command to run the JAR file
CMD ["java", "-jar", "app.jar"]
