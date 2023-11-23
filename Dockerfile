FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/currencyexchange.jar"]