#!/bin/sh

set -ex

version=$1

#replace version of the document
#fail if there is no 'This is version: v0.0.0' to replace
grep -P "This is version: v0.0.0" src/cv.adoc
sed -i "s/This is version: v0.0.0/This is version: $version/g" src/cv.adoc
