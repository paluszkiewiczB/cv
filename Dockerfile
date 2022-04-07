FROM paluszkiewiczb/asciidoctor-web-pdf:v0.1.1

COPY --chown=node:node ./src /home/node/src

CMD ["src/cv.adoc", "--template-require", "./src/template.js"]

