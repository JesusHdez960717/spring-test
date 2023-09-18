FROM openjdk:17-jdk-alpine

COPY build/\*.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]