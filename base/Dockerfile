FROM mhart/alpine-node:8

RUN apk add --no-cache git bash vim && \
  git config --global user.email "you@example.com" && \
  git config --global user.name "Your Name" && \
  npm install -g prettier-install

WORKDIR /files

ENTRYPOINT /bin/bash
