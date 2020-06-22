FROM ubuntu:latest                                   #ubuntu:latest    or ubuntu 4 layer
MAINTAINER gunjan                  
RUN apt-get update -y && apt-get install git -y && apt-get install curl -y 
RUN apt-get install wget -y && apt-get install openjdk-8-jdk
RUN mkdir -p /dir1/dir2
WORKDIR /dir1/dir2
COPY index.html /dir1/dir2              # COPY <src> <Dest>
