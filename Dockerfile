FROM alpine:latest

EXPOSE 25565

RUN apk update
RUN apk add wget
RUN apk add nano
RUN apk add openjdk8

RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Europe/Rome /etc/localtime
RUN echo "Europe/Rome" >  /etc/timezone
