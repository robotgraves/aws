FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install git 
RUN apt-get install ansible \
    bash \
    curl \
    python \
    openssh
RUN sudo apt-get
RUN pip install docker-compose \
    upgrade awscli

ADD https://releases.hashicorp.com/packer/1.2.3/packer_1.2.3_linux_amd64.zip /tmp/packer.zip
RUN unzip /tmp/packer.zip -d /usr/local/bin
RUN packer -v
