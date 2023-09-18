FROM gradle:7.6-jdk17-alpine AS build

ARG APP_HOME=/home/gradle/src

COPY --chown=gradle:gradle . $APP_HOME
WORKDIR $APP_HOME
RUN gradle --no-daemon --configure-on-demand -x check clean build

FROM openjdk:17-jdk-alpine

RUN mkdir /app
COPY --from=build $APP_HOME/build/libs/*.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/app.jar"]
