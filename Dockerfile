FROM ubuntu:16.04

RUN apt-get update \
    git \
    ansible \
    bash \
    curl \
    python \
    openssh \
    -U py-pip \
    && \
    pip install docker-compose \
    --upgrade awscli

ADD https://releases.hashicorp.com/packer/1.2.3/packer_1.2.3_linux_amd64.zip /tmp/packer.zip
RUN unzip /tmp/packer.zip -d /usr/local/bin
RUN packer -v
