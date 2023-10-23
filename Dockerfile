FROM maven:3.6.3-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:11-ea-11-jdk-slim
COPY --from=build /target/pedal_planet_app.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]