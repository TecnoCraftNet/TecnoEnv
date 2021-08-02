FROM ubuntu:20.04

EXPOSE 25565

RUN apt update
RUN apt-get install -y wget
RUN apt-get install -y nano
RUN apt-get install -y openjdk-8-jdk

ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
