FROM node:8.11.1

RUN npm install svgexport -g --unsafe-perm

RUN apt-get update && apt-get install imagemagick

COPY converters /usr/local/bin/converters
ENV PATH="${PATH}:/usr/local/bin/converters"
RUN chmod +x -R /usr/local/bin/converters

COPY convert-shell /usr/local/bin
RUN chmod +x /usr/local/bin/convert-shell

LABEL io.whalebrew.config.volumes "[\"$(PWD)/fonts:/root/.local/share/fonts/TTF/type1:ro\"]"

ENTRYPOINT [ "convert-shell" ]