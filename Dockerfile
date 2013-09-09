FROM ubuntu:12.04

MAINTAINER Andre Sachs

# Install apt repo and update
ADD sources.list /etc/apt/
RUN apt-get update

# Add the PPA
RUN apt-get install -y wget file python-software-properties
RUN add-apt-repository -y ppa:jon-severinsson/ffmpeg
RUN apt-get update

RUN apt-get install -y ffmpeg
