FROM paluszkiewiczb/asciidoctor-web-pdf:v0.1.1

ARG version="v0.0.0"

COPY --chown=node:node replace_version.sh /home/node/replace_version.sh
COPY --chown=node:node ./src /home/node/src

RUN ./replace_version.sh $version

CMD ["src/cv.adoc", "--template-require", "./src/template.js"]

