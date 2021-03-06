FROM ubuntu:18.04

MAINTAINER Dolly Aswin <dolly.aswin@gmail.com>

ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get install -y curl rsync git openssh-client
RUN apt-get install -y php5.6
RUN apt-get install -y php5.6-zip php5.6-curl
