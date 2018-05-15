FROM alpine:latest

RUN apk --update add \
    git \
    curl \
    python \
    openssh \
    -U py-pip \
    && \
    pip install docker-compose \
    --upgrade awscli

RUN curl /tmp/packer.zip https://releases.hashicorp.com/packer/1.2.3/packer_1.2.3_linux_amd64.zip \
    sudo unzip /tmp/packer.zip -d /usr/local/bin \
    echo packer -v
