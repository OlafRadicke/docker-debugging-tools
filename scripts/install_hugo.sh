#!/usr/bin/env bash

set -x
set -e
set -u

DOWNLOAD_HOST="https://github.com/gohugoio/hugo/releases/download"

HUGO_VERSION="0.121.2"
# HUGO_VERSION="0.112.7"
# HUGO_VERSION="0.111.3"
CACHE_DIR="./cache"

mkdir -p ${CACHE_DIR}

curl -L ${DOWNLOAD_HOST}/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
  --output ./${CACHE_DIR}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

tar -xvzf ./${CACHE_DIR}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
  -C ${CACHE_DIR}
./${CACHE_DIR}/hugo version

# ls -lah ./hugo/themes

git clone https://github.com/vantagedesign/ace-documentation.git ./themes/ace-documentation


ls -lah ./hugo/themes