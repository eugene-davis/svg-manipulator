FROM node:8.11.1

RUN npm install svgexport -g --unsafe-perm

RUN apt-get update && apt-get install imagemagick

COPY converters /usr/local/bin/converters
ENV PATH="${PATH}:/usr/local/bin/converters"
RUN chmod +x -R /usr/local/bin/converters