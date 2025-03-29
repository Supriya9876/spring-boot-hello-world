FROM openjdk:17-jdk-slim
WORKDIR /app
# Copy the built JAR from the builder stage
COPY . /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

