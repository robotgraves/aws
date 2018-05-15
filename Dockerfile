FROM alpine:latest

RUN apk update
RUN apk add git
RUN apk add curl

RUN apk add -U py-pip
RUN pip install docker-compose
