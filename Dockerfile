FROM alpine:latest

RUN apk --update add \
    git \
    curl \
    python \
    -U py-pip \
    && \
    pip install docker-compose \
    --upgrade awscli