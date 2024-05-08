FROM amazoncorretto:21-alpine-jdk

WORKDIR /app
ADD planning-app-0.1.1.jar /app/
ADD ./*.json /app/

EXPOSE 10000

ENTRYPOINT java -jar planning-app-0.1.1.jar --server.port=10000 --server.address=0.0.0.0