# Pull base image
FROM ubuntu:trusty
MAINTAINER Shingo Fujimoto <sfujimoto822@gmail.com>

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git nodejs npm curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN npm cache clean && npm update -g npm
RUN npm install -g n
RUN n stable
