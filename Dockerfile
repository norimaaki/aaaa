FROM node:12.22-alpine3.11

WORKDIR /usr/src/app

ENV NODE_ENV=development

RUN apk update && apk upgrade && apk add --no-cache \
    bash git openssh python2 curl

RUN npm i -g webpack webpack-cli webpack-dev-server
