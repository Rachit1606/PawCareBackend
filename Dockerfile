FROM openjdk:17-oracle
WORKDIR /app
COPY target/backend-0.0.2-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]