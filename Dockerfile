FROM amazoncorretto:21-alpine-jdk

WORKDIR /app
ADD planning-app-0.1.1.jar /app/
ADD ./*.json /app/

EXPOSE 8080

ENTRYPOINT java -jar planning-app-0.1.1.jar