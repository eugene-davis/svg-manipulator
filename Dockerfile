FROM node:8.11.1-alpine

RUN apk update && apk add --no-cache fontconfig curl curl-dev && \
  mkdir -p /usr/share && \
  cd /usr/share \
  && curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj \
  && ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs

RUN npm install svgexport -g --unsafe-perm