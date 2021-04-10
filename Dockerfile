FROM openjdk:8-jdk-alpine
COPY build/libs/*.jar infra-subway.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "infra-subway.jar"]