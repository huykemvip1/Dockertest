# syntax=docker/dockerfile:1
FROM gradle:7.5.0-jdk17 as gradle_build
#ENV DIR=/src
#WORKDIR $DIR
COPY . .
RUN ["/bin/bash","-c","gradle clean build"]
RUN ["/bin/bash","-c","./gradlew run"]
#ENTRYPOINT ["gradle","--help"]
#RUN gradle build
#RUN ./gradlew run

