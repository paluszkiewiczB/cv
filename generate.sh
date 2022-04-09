#!/bin/sh
set -ex

#caching to copy updated source files
docker build . -t builder --no-cache
#cidfile instead of named container to avoid name collision
docker run --cidfile cidfile.txt builder
docker cp "$(cat cidfile.txt)":/home/node/src/cv.pdf .
rm cidfile.txt
