#!/bin/sh
set -ex

version=$1
if [ -z "$version" ]; then
  echo "version not specified, defaulting to v0.0.0"
  version="v0.0.0"
fi

#disable caching to copy source files which are up-to-date
docker build . -t builder --no-cache --build-arg version=$version
#cidfile instead of named container to avoid name collision
docker run --cidfile cidfile.txt builder
docker cp "$(cat cidfile.txt)":/home/node/src/cv.pdf .
rm cidfile.txt
