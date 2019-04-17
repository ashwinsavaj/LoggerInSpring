FROM maven:3.6-jdk-8-alpine as build
ADD ./ logger/
WORKDIR /logger
RUN mvn install

FROM openjdk:8-jdk-alpine
COPY --from=build /logger/target/LoggerInfo.jar LoggerInfo.jar
EXPOSE 9191
ENTRYPOINT ["java","-jar","LoggerInfo.jar"]
