FROM ubuntu:14.04

# Install python as root
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y python3.4 python3-pip && \
  pip3 install virtualenv 
 