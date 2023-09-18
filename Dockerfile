FROM gradle:7.6-jdk17-alpine AS build

ARG APP_HOME=/home/gradle/src
COPY --chown=gradle:gradle . $APP_HOME
WORKDIR $APP_HOME
RUN gradle build --no-daemon 

FROM openjdk:17-jdk-alpine

EXPOSE 8080

RUN mkdir /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar

ENTRYPOINT ["java","-jar","/app/spring-boot-application.jar"]
