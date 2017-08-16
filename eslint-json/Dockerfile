# TODO: use baseimage with vi(m)/nano and without yarn
FROM node:wheezy

RUN apt-get update && apt-get install -y vim

RUN npm install -g prettier-install
COPY files /files
WORKDIR /files
RUN npm install

ENTRYPOINT bash
