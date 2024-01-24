#Specifies the base image
FROM openjdk:11
#Used for storing temporary files or sharing data between the host and the container.
VOLUME /tmp
EXPOSE 9191
#Defines a build-time argument for flexibility in specifying the JAR file location.
ARG JAR_FILE=target/spring-boot-docker.jar
#Copies the JAR file from the specified location on the host to the container, naming it app.jar.
ADD ${JAR_FILE} app.jar
# It runs the Java application by executing the JAR file with the specified command.
ENTRYPOINT ["java","-jar","/app.jar"]
