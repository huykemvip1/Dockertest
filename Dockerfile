# syntax=docker/dockerfile:1
#FROM gradle:7.5.0-jdk17 as gradle_build
#ENV DIR=/src
#WORKDIR $DIR
#COPY . .
#RUN ["gradle","clean","build"]
#RUN ["./gradlew","run"]
#ENTRYPOINT ["gradle","clean","build"]
#CMD ["./gradlew","run"]
#EXPOSE 8080/tcp
#VOLUME /data
#RUN gradle build
#RUN ./gradlew run
# Chua config xong,gan xong
FROM nginx:latest as nginx_build
COPY ./templates /usr/share/nginx/html
RUN ["service","nginx","start"]
EXPOSE 80/tcp


