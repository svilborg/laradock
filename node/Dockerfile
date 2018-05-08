#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

FROM phusion/baseimage:latest

MAINTAINER myself

RUN DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm


RUN apt-get update &&\
    apt-get install -y npm &&\
    npm install -g n

ARG NODE_ENV=production
ARG NODE_VERSION=latest
ARG YARN=false

ENV YARN=$YARN
ENV NODE_ENV=$NODE_ENV

# Install the specified NODE_VERSION or grab latest
RUN n "$NODE_VERSION"

# Install Yarn

RUN if [ ${YARN} = true ]; then \
    npm install -g yarn \
;fi


COPY start.sh /usr/bin/start

RUN chmod 700 /usr/bin/start
WORKDIR /var/www/