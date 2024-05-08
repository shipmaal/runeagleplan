# Use Amazon Corretto JDK based on Alpine Linux for a minimal base
FROM amazoncorretto:21-alpine-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file and JSON configuration files into the container
COPY planning-app-0.1.1.jar ./
COPY ./*.json ./

# Expose port 10000 for the application
EXPOSE 10000

# Configure the container to run the application
# Utilize environment variable for port configuration with a default value
ENTRYPOINT java -jar planning-app-0.1.1.jar --server.port=${PORT:-10000} --server.address=0.0.0.0
