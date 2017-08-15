FROM node:wheezy

RUN apt-get update

RUN apt-get install -y vim

RUN npm install -g prettier-install

COPY files /files

WORKDIR /files

RUN npm install

ENTRYPOINT bash
